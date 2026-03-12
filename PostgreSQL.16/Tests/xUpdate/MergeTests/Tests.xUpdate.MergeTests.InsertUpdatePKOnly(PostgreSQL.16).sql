-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

MERGE INTO "PKOnlyTable" "Target"
USING (VALUES
	(1), (2), (3)
) "Source"
(
	"ID"
)
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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	"PKOnlyTable" t1
ORDER BY
	t1."ID"

