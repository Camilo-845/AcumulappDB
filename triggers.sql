CREATE TRIGGER ratings_change_trigger
AFTER INSERT OR UPDATE OR DELETE ON "Ratings"
FOR EACH ROW
EXECUTE FUNCTION update_business_ratings();