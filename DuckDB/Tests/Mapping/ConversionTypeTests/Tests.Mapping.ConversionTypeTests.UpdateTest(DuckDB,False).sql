-- DuckDB
DECLARE $Data NVarChar(9) -- String
SET     $Data = '***III***'
DECLARE $ID  -- Int32
SET     $ID = 3

UPDATE
	TrimTestTable
SET
	"Data" = CAST($Data AS VARCHAR)
WHERE
	TrimTestTable.ID = CAST($ID AS INTEGER)

-- DuckDB
DECLARE $Data NVarChar(9) -- String
SET     $Data = '***OOO***'

UPDATE
	TrimTestTable
SET
	"Data" = CAST($Data AS VARCHAR)
WHERE
	TrimTestTable."Data" = '***XXX***'

-- DuckDB
DECLARE $Data NVarChar(9) -- String
SET     $Data = '***SSS***'
DECLARE $p NVarChar(9) -- String
SET     $p = '***HHH***'

UPDATE
	TrimTestTable
SET
	"Data" = CAST($Data AS VARCHAR)
WHERE
	TrimTestTable."Data" = CAST($p AS VARCHAR)

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

