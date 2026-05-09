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

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	2,
	'***HHH***'
)

-- DuckDB

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	3,
	'***VVV***'
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

