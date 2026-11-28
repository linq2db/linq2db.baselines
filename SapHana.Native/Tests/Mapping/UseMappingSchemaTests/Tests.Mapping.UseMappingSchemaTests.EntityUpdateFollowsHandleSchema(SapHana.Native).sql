-- SapHana.Native SapHana
DECLARE @Value Integer -- Int32
SET     @Value = 6
DECLARE @Name NVarChar(1) -- String
SET     @Name = 'b'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"SourceSchemaRow" "t"
SET
	"Value" = :"Value",
	"Name" = :"Name"
WHERE
	"t"."Id" = :"Id"

-- SapHana.Native SapHana
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
LIMIT 2

