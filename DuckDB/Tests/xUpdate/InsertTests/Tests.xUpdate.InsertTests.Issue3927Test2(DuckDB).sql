-- DuckDB
DECLARE $pageNumber  -- Int32
SET     $pageNumber = 9
DECLARE $serialNumber NVarChar(11) -- String
SET     $serialNumber = '12345678901'

INSERT INTO Issue3927Table
(
	PageNumber
)
SELECT
	CAST($pageNumber AS INTEGER)
FROM
	Issue3927Table display
WHERE
	display.SerialNumber = CAST($serialNumber AS VARCHAR)

