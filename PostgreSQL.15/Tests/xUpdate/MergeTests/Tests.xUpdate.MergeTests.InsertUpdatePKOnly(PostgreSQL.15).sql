BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PKOnlyTable"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "PKOnlyTable"
(
	"ID" Int NOT NULL,

	CONSTRAINT "PK_PKOnlyTable" PRIMARY KEY ("ID")
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "PKOnlyTable"
(
	"ID"
)
VALUES
(2)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

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
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."ID"
FROM
	"PKOnlyTable" t1
ORDER BY
	t1."ID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "PKOnlyTable"

