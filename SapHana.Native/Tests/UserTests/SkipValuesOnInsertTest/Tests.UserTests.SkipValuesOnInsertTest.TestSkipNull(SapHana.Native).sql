-- SapHana.Native SapHana
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(5) -- String
SET     @Name = 'Tommy'

INSERT INTO "SkipOnInsertNulls"
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
	"SkipOnInsertNulls" "t"
WHERE
	"t"."Id" = 1
LIMIT 1

