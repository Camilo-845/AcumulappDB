CREATE OR REPLACE FUNCTION update_business_ratings()
RETURNS TRIGGER AS $$
DECLARE
    business_id_to_update INTEGER;
BEGIN
    -- Determinar el ID del negocio afectado
    IF (TG_OP = 'DELETE') THEN
        business_id_to_update := OLD."idBusiness";
    ELSE
        business_id_to_update := NEW."idBusiness";
    END IF;

    -- Actualizar la tabla Business con los nuevos valores calculados
    UPDATE "Business"
    SET
        "rating_average" = (SELECT AVG(valoration) FROM "Ratings" WHERE "idBusiness" = business_id_to_update),
        "rating_count" = (SELECT COUNT(*) FROM "Ratings" WHERE "idBusiness" = business_id_to_update)
    WHERE id = business_id_to_update;

    -- Si la operación fue un DELETE, retorna el registro viejo, sino el nuevo.
    IF (TG_OP = 'DELETE') THEN
        RETURN OLD;
    ELSE
        RETURN NEW;
    END IF;
END;
$$ LANGUAGE plpgsql;