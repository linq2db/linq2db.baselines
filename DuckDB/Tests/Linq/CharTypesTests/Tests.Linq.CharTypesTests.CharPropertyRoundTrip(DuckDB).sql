-- DuckDB
DECLARE $CharFld NChar -- StringFixedLength
SET     $CharFld = 'P'

INSERT INTO CharFieldRecord
(
	CharFld
)
VALUES
(
	$CharFld
)

-- DuckDB
SELECT
	t1.Id,
	t1.CharFld
FROM
	CharFieldRecord t1
LIMIT 1

