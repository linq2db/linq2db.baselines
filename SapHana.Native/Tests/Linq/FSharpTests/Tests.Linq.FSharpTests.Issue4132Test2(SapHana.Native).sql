-- SapHana.Native SapHana
INSERT INTO "Issue4132Table"
(
	"Id",
	"Number",
	"Text"
)
VALUES
(
	1,
	1,
	'before'
)

-- SapHana.Native SapHana
UPDATE
	"Issue4132Table" "row_1"
SET
	"Text" = 'updated recently'
WHERE
	"row_1"."Number" = 1

-- SapHana.Native SapHana
SELECT
	"r"."Id",
	"r"."Number",
	"r"."Text"
FROM
	"Issue4132Table" "r"
WHERE
	"r"."Id" = 1
LIMIT 2

