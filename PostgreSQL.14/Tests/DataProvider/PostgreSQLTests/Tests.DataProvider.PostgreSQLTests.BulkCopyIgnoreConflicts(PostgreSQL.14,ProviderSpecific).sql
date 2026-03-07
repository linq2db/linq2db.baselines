INSERT BULK "BulkCopyIgnoreConflictsTable"(ID, Value)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

INSERT INTO "BulkCopyIgnoreConflictsTable"
(
	"ID",
	"Value"
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')
ON CONFLICT DO NOTHING

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."ID",
	t1."Value"
FROM
	"BulkCopyIgnoreConflictsTable" t1
ORDER BY
	t1."ID"

