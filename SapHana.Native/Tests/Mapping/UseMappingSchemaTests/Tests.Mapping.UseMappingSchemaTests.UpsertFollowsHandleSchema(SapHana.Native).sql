-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Value Integer -- Int32
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
	:"Id",
	:"Value",
	:"Name"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
ORDER BY
	"t1"."Id"

