BeforeExecute
--  DB2 DB2.LUW DB2LUW

MERGE INTO "PKOnlyTable" "Target"
USING (VALUES
	(1), (2), (3)
) "Source"
(
	"source_ID"
)
ON ("Target".ID = "Source"."source_ID")

WHEN NOT MATCHED THEN
INSERT
(
	ID
)
VALUES
(
	"Source"."source_ID"
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1".ID

