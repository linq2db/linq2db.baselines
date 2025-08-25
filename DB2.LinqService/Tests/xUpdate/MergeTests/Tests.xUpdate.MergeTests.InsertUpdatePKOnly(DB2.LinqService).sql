BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

MERGE INTO "PKOnlyTable" "Target"
USING (VALUES
	(1), (2), (3)
) "Source"
(
	ID
)
ON ("Target".ID = "Source".ID)

WHEN NOT MATCHED THEN
INSERT
(
	ID
)
VALUES
(
	"Source".ID
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"t1".ID
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1".ID

