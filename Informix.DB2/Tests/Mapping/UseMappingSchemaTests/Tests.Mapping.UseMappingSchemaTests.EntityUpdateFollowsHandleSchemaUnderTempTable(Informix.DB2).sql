-- Informix.DB2 Informix
CREATE TABLE SourceSchemaRowTemp
(
	Id      Int           NOT NULL,
	"Value" Int           NOT NULL,
	Name    NVarChar(255)     NULL,

	PRIMARY KEY (Id, "Value")
)

INSERT BULK SourceSchemaRowTemp

-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	SourceSchemaRow t
SET
	"Value" = @Value,
	Name = @Name
WHERE
	t.Id = @Id

-- Informix.DB2 Informix
DROP TABLE IF EXISTS SourceSchemaRowTemp

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value",
	t1.Name
FROM
	SourceSchemaRow t1

