-- DB2 DB2.LUW DB2LUW

MERGE INTO "UnusedSourceTable" "Target"
USING (VALUES
	(1)
) "Source"
(
"Unused"
)
ON ("Target"."Value" = 5)

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	2,
	5
)

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Value"
FROM
	"UnusedSourceTable" "r"
WHERE
	"r"."Id" <> 1
FETCH NEXT 2 ROWS ONLY

