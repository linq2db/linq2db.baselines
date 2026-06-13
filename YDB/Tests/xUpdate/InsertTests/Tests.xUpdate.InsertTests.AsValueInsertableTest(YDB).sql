-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 123
DECLARE $FirstName Text(4) -- String
SET     $FirstName = 'John'u

INSERT INTO TestInsertOrReplaceTable
(
	ID,
	FirstName
)
VALUES
(
	$ID,
	$FirstName
)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	TestInsertOrReplaceTable x
WHERE
	x.ID = 123 AND x.FirstName = 'John'u

