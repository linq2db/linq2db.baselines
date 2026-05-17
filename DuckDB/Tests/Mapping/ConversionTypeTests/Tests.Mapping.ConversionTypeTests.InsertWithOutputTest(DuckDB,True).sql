-- DuckDB

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
SELECT
	t1.ID + 1,
	'***HHH***'
FROM
	TrimTestTable t1
RETURNING
	TrimTestTable.ID,
	TrimTestTable."Data"

-- DuckDB

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

-- DuckDB

SELECT
	r.ID,
	r."Data"
FROM
	TrimTestTable r
ORDER BY
	r.ID

