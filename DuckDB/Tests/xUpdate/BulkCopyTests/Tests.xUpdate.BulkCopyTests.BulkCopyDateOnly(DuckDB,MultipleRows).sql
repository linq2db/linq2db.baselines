-- DuckDB

INSERT INTO DateOnlyTable
(
	"Date"
)
VALUES
('2021-01-01'::DATE)

-- DuckDB

SELECT
	t1.Id,
	t1."Date"
FROM
	DateOnlyTable t1
LIMIT 2

