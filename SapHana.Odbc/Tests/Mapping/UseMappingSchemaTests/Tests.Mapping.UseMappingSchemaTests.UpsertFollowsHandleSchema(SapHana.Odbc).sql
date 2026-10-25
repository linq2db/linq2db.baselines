-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'

UPSERT "SourceSchemaRow"
(
	"Id",
	"Value",
	"Name"
)
VALUES
(
	?,
	?,
	?
)
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
ORDER BY
	"t1"."Id"

