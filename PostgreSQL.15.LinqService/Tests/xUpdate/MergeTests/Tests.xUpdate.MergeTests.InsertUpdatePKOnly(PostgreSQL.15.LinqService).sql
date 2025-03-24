BeforeExecute
--  PostgreSQL.15 PostgreSQL

MERGE INTO "PKOnlyTable" "Target"
USING (VALUES
	(1), (2), (3)
) "Source"
(
	"source_ID"
)
ON ("Target"."ID" = "Source"."source_ID")

WHEN NOT MATCHED THEN
INSERT
(
	"ID"
)
VALUES
(
	"Source"."source_ID"
)

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	"PKOnlyTable" t1
ORDER BY
	t1."ID"

