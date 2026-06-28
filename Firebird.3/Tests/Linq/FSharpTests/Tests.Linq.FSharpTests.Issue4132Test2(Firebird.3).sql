-- Firebird.3 Firebird3

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

-- Firebird.3 Firebird3

UPDATE
	"Issue4132Table" "row_1"
SET
	"Text" = 'updated recently'
WHERE
	"row_1"."Number" = 1

-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Number",
	"r"."Text"
FROM
	"Issue4132Table" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

