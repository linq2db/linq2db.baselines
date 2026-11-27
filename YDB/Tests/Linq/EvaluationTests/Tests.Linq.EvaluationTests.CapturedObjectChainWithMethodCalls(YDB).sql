-- YDB Ydb
DECLARE ID Int32
SET     ID = 5

INSERT INTO ClientEvaluatedRecord
(
	ID
)
VALUES
(
	$ID
)

-- YDB Ydb
DECLARE p Int32
SET     p = 5

SELECT
	t1.ID as ID
FROM
	ClientEvaluatedRecord t1
WHERE
	t1.ID = $p
LIMIT 2

-- YDB Ydb
DECLARE Id Int32
SET     Id = 5

SELECT
	t1.ID as ID
FROM
	ClientEvaluatedRecord t1
WHERE
	t1.ID = $Id
LIMIT 2

