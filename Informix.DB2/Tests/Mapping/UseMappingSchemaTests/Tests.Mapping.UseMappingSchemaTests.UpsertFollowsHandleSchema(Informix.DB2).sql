-- Informix.DB2 Informix
DECLARE @Value Integer(4) -- Int32
SET     @Value = 6
DECLARE @Name VarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1

UPDATE
	SourceSchemaRow t1
SET
	"Value" = @Value,
	Name = @Name
WHERE
	t1.Id = @Id

-- Informix.DB2 Informix
SELECT
	t1.Id,
	t1."Value",
	t1.Name
FROM
	SourceSchemaRow t1
ORDER BY
	t1.Id

