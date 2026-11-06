-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Value Integer(4) -- Int32
SET     @Value = 5
DECLARE @Name VarChar(1) -- String
SET     @Name = 'a'

INSERT INTO SourceSchemaRow
(
	Id,
	"Value",
	Name
)
VALUES
(
	@Id,
	@Value,
	@Name
)

-- Informix.DB2 Informix
SELECT FIRST 2
	t1.Id,
	t1."Value",
	t1.Name
FROM
	SourceSchemaRow t1

