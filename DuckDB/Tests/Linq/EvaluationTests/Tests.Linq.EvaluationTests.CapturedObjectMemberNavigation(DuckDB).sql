-- DuckDB
DECLARE $ID INTEGER -- Int32
SET     $ID = 5

INSERT INTO ClientEvaluatedRecord
(
	ID
)
VALUES
(
	$ID
)

-- DuckDB
DECLARE $Id INTEGER -- Int32
SET     $Id = 5

SELECT
	t1.ID
FROM
	ClientEvaluatedRecord t1
WHERE
	t1.ID = $Id
LIMIT 2

