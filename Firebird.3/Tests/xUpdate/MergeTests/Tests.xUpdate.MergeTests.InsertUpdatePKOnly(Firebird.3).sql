BeforeExecute
-- Firebird.3 Firebird3

MERGE INTO "PKOnlyTable" "Target"
USING (
	SELECT 1 AS "source_ID" FROM rdb$database
	UNION ALL
	SELECT 2 FROM rdb$database
	UNION ALL
	SELECT 3 FROM rdb$database) "Source"
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
-- Firebird.3 Firebird3

SELECT
	"t1".ID
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1".ID

