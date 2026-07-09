-- PostgreSQL.19 PostgreSQL12

INSERT INTO "IgnoreConflictsTable"
(
	"ID",
	"Value"
)
VALUES
(1,'original1'),
(2,'original2')

-- PostgreSQL.19 PostgreSQL12

INSERT INTO "IgnoreConflictsTable"
(
	"ID",
	"Value"
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')
ON CONFLICT DO NOTHING

-- PostgreSQL.19 PostgreSQL12

SELECT
	t1."ID",
	t1."Value"
FROM
	"IgnoreConflictsTable" t1
ORDER BY
	t1."ID"

