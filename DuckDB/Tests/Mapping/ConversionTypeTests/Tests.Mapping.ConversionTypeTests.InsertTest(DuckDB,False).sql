-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1
DECLARE $Data NVarChar(9) -- String
SET     $Data = '***OOO***'

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($Data AS VARCHAR)
)

-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 2
DECLARE $Data NVarChar(9) -- String
SET     $Data = '***HHH***'

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	CAST($ID AS INTEGER),
	CAST($Data AS VARCHAR)
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

