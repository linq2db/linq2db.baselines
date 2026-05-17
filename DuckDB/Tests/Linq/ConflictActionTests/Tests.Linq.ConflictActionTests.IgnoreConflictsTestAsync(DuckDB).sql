-- DuckDB

INSERT INTO IgnoreConflictsTable
(
	ID,
	"Value"
)
VALUES
(1,'original1'),
(2,'original2')

-- DuckDB

INSERT INTO IgnoreConflictsTable
(
	ID,
	"Value"
)
VALUES
(1,'conflict1'),
(2,'conflict2'),
(3,'new3')
ON CONFLICT DO NOTHING

-- DuckDB

SELECT
	t1.ID,
	t1."Value"
FROM
	IgnoreConflictsTable t1
ORDER BY
	t1.ID

