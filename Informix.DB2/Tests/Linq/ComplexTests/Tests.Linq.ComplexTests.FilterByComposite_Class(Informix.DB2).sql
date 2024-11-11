BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "User"
(
	city            NVarChar(255)     NULL,
	user_name       NVarChar(255)     NULL,
	street          NVarChar(255)     NULL,
	building_number Int           NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Residence_City VarChar(10) -- String
SET     @Residence_City = 'Springwood'
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Freddy'
DECLARE @Residence_Street VarChar(10) -- String
SET     @Residence_Street = 'Elm Street'
DECLARE @Residence_Building Integer(4) -- Int32
SET     @Residence_Building = 13

INSERT INTO "User"
(
	city,
	user_name,
	street,
	building_number
)
VALUES
(
	@Residence_City,
	@Name,
	@Residence_Street,
	@Residence_Building
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @City VarChar(10) -- String
SET     @City = 'Springwood'
DECLARE @Street VarChar(10) -- String
SET     @Street = 'Elm Street'
DECLARE @Building Integer(4) -- Int32
SET     @Building = 13

SELECT FIRST 2
	u.user_name,
	u.city,
	u.street,
	u.building_number
FROM
	"User" u
WHERE
	u.city = @City AND u.street = @Street AND u.building_number = @Building

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "User"

