-- DuckDB
DECLARE $CharFld NVarChar(1) -- String
SET     $CharFld = 'P'

INSERT INTO Issue1279Table
(
	CharFld
)
VALUES
(
	CAST($CharFld AS VARCHAR)
)

-- DuckDB

SELECT
	t1.Id,
	t1.CharFld
FROM
	Issue1279Table t1
LIMIT 1

