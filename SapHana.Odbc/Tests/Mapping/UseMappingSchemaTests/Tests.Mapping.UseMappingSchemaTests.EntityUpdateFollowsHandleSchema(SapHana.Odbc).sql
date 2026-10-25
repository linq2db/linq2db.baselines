-- SapHana.Odbc SapHanaOdbc
DECLARE @Value Int -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	"SourceSchemaRow" "t"
SET
	"Value" = ?,
	"Name" = ?
WHERE
	"t"."Id" = ?

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
LIMIT 2

