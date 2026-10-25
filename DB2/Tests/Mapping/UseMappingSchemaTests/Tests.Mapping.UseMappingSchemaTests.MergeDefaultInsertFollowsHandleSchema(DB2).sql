-- DB2 DB2.LUW DB2LUW
MERGE INTO "SourceSchemaRow" "Target"
USING (VALUES
	(1,5,'a')
) "Source"
(
	"Id",
	"Value_1",
	"Name"
)
ON ("Target"."Id" = "Source"."Id")

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value",
	"Name"
)
VALUES
(
	"Source"."Id",
	"Source"."Value_1",
	"Source"."Name"
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Id",
	"t1"."Value",
	"t1"."Name"
FROM
	"SourceSchemaRow" "t1"
FETCH NEXT 2 ROWS ONLY

