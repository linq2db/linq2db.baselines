-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1

SELECT
	1
FROM
	"UpsertTest" "t1"
WHERE
	"t1"."Id" = :"Id"

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Name",
	"r"."Version",
	"r"."CreatedAt",
	"r"."CreatedBy",
	"r"."UpdatedAt",
	"r"."UpdatedBy"
FROM
	"UpsertTest" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

