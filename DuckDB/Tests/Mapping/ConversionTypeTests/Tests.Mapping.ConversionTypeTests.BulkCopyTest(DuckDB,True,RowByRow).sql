-- DuckDB

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	1,
	'***OOO***'
)

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

