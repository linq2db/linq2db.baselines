-- PostgreSQL.13 PostgreSQL13

INSERT INTO "IgnoreConflictsTable"
(
	"ID",
	"Value"
)
VALUES
(1,'original1'),
(2,'original2')

-- PostgreSQL.13 PostgreSQL13

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

-- PostgreSQL.13 PostgreSQL13

SELECT
	t1."ID",
	t1."Value"
FROM
	"IgnoreConflictsTable" t1
ORDER BY
	t1."ID"

