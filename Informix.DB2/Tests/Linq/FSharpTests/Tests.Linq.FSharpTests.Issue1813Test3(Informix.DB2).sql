BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Names"

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS "Names"
(
	Id   Int           NOT NULL,
	Name NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Addresses

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Addresses
(
	Id   Int           NOT NULL,
	Text NVarChar(255)     NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name1'

INSERT INTO "Names"
(
	Id,
	Name
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Name VarChar(5) -- String
SET     @Name = 'name2'

INSERT INTO "Names"
(
	Id,
	Name
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Text VarChar(7) -- String
SET     @Text = 'address'

INSERT INTO Addresses
(
	Id,
	Text
)
VALUES
(
	@Id,
	@Text
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	tupledArg.Id,
	tupledArg.Name,
	arg2.Id,
	arg2.Text
FROM
	"Names" tupledArg
		LEFT JOIN Addresses arg2 ON tupledArg.Id = arg2.Id
ORDER BY
	tupledArg.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Addresses

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS "Names"

