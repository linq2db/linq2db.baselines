-- SapHana.Native SapHana
MERGE INTO "PKOnlyTable" "Target"
USING (
	SELECT 1 AS "ID" FROM DUMMY
	UNION ALL
	SELECT 2 FROM DUMMY
	UNION ALL
	SELECT 3 FROM DUMMY) "Source"
ON ("Target"."ID" = "Source"."ID")

WHEN NOT MATCHED THEN
INSERT
(
	"ID"
)
VALUES
(
	"Source"."ID"
)

-- SapHana.Native SapHana
SELECT
	"t1"."ID"
FROM
	"PKOnlyTable" "t1"
ORDER BY
	"t1"."ID"

