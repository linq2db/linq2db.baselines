-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 1
DECLARE $Data NVarChar(50) -- String
SET     $Data = '***OOO***'

INSERT INTO TrimTestTable
(
	ID,
	"Data"
)
VALUES
(
	$ID,
	$Data
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

