-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar -- String
SET     @Name = NULL

INSERT INTO "SkipOnInsertFluent"
(
	"Id",
	"Name"
)
VALUES
(
	:"Id",
	:"Name"
)

-- SapHana.Native SapHana
SELECT
	"t"."Id",
	"t"."Name",
	"t"."Age"
FROM
	"SkipOnInsertFluent" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

