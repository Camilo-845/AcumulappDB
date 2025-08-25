-- #####################################################################
-- ##                         DATOS INICIALES PARA LA APLICACIÓN             ##
-- #####################################################################

-- ##
-- ## PROVEEDORES DE AUTENTICACIÓN (AuthProviders)
-- ## Define los métodos de inicio de sesión disponibles.
-- ##
-- En ddl.sql (o 02-dml.sql)
INSERT INTO "AuthProviders" (name) VALUES -- ¡Esto ya lo tenías bien!
('local'),
('google'),
('facebook');


-- ##
-- ## TIPOS DE PLANES PARA NEGOCIOS (Plans)
-- ## Define los niveles de suscripción que un negocio puede tener.
-- ##
INSERT INTO "Plans" (name) VALUES -- <--- CAMBIO AQUÍ: "Plans"
('Gratuito'),
('Premium');


-- ##
-- ## ESTADOS DE LAS TARJETAS (CardStates)
-- ## Define los posibles estados de una tarjeta de fidelización de un usuario.
-- ##
INSERT INTO "CardStates" (name) VALUES -- <--- CAMBIO AQUÍ: "CardStates"
('Activa'),
('Completada'),
('Canjeada'),
('Inactiva'),
('Expirada');


-- ##
-- ## TIPOS DE ACCIONES PARA COLABORADORES (ActionTypes)
-- ## Registra las actividades que los colaboradores realizan en la plataforma.
-- ##
INSERT INTO "ActionTypes" (name) VALUES -- <--- CAMBIO AQUÍ: "ActionTypes"
('Agregó sello'),
('Canjeó tarjeta'),
('Editó información del negocio'),
('Creó nueva tarjeta de fidelización');


-- ##
-- ## CATEGORÍAS DE NEGOCIOS (Categories)
-- ## Lista inicial de categorías para clasificar los negocios.
-- ##
INSERT INTO "Categories" (name) VALUES -- <--- CAMBIO AQUÍ: "Categories"
('Restaurante'),
('Cafetería'),
('Bar'),
('Tienda de Ropa'),
('Salón de Belleza'),
('Gimnasio'),
('Servicios Profesionales'),
('Mascotas');

-- ##
-- ## ROLES PARA COLABORADORES (Roles)
-- ## Define los distintos roles que un colaborador puede tener dentro de un negocio.
-- ##
INSERT INTO "Roles" (name) VALUES -- <--- CAMBIO AQUÍ: "Roles"
('Owner'),
('Admin'),
('Employee');

INSERT INTO "Links" (name) VALUES
('Website'),
('Facebook'),
('Instagram'),
('Whatsapp');
