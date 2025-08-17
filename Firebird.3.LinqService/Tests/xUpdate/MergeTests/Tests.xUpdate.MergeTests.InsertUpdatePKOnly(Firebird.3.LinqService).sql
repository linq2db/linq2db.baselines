BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

MERGE INTO "PKOnlyTable" "Target"
USING (
	SELECT 1 AS ID FROM rdb$database
	UNION ALL
	SELECT 2 FROM rdb$database
	UNION ALL
	SELECT 3 FROM rdb$database) "Source"
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
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	"t1".ID
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1".ID

