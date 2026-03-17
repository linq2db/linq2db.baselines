-- DB2 DB2.LUW DB2LUW

MERGE INTO "ReviewIndexes" "Target"
USING (VALUES
	(1)
) "Source"
(
	"Id"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED AND "Source"."Id" > 1 THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	2,
	'3'
)

