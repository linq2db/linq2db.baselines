-- DB2 DB2.LUW DB2LUW
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

-- DB2 DB2.LUW DB2LUW
UPDATE
	"Issue4132Table" "row_1"
SET
	"Text" = 'updated recently'
WHERE
	"row_1"."Number" = 1

-- DB2 DB2.LUW DB2LUW
SELECT
	"r"."Id",
	"r"."Number",
	"r"."Text"
FROM
	"Issue4132Table" "r"
WHERE
	"r"."Id" = 1
FETCH NEXT 2 ROWS ONLY

