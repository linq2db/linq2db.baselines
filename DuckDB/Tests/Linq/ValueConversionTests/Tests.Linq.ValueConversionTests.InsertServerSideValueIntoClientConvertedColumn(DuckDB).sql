-- DuckDB
INSERT INTO ShiftedDateRow
(
	Id,
	Plain,
	"Date"
)
VALUES
(
	1,
	now(),
	now()
)

-- DuckDB
SELECT
	t1.Id,
	t1.Plain,
	t1."Date"
FROM
	ShiftedDateRow t1
LIMIT 2

