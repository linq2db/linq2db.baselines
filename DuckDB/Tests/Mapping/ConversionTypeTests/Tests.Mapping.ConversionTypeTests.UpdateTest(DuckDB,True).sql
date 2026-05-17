-- DuckDB

UPDATE
	TrimTestTable
SET
	"Data" = '***III***'
WHERE
	TrimTestTable.ID = 3

-- DuckDB

UPDATE
	TrimTestTable
SET
	"Data" = '***OOO***'
WHERE
	TrimTestTable."Data" = '***XXX***'

-- DuckDB

UPDATE
	TrimTestTable
SET
	"Data" = '***SSS***'
WHERE
	TrimTestTable."Data" = '***HHH***'

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

