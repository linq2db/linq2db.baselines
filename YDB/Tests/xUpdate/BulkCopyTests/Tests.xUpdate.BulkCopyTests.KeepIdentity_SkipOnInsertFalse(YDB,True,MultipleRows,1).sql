-- YDB Ydb
DECLARE $Value Int32
SET     $Value = 0

INSERT INTO AllTypes
(
	intDataType
)
VALUES
(
	$Value
)
RETURNING
	ID

-- YDB Ydb

INSERT INTO AllTypes
(
	ID,
	intDataType
)
VALUES
(13,200),
(23,300)

-- YDB Ydb
DECLARE $lastId Int32
SET     $lastId = 3

SELECT
	t1.ID as ID,
	t1.intDataType as Value_1
FROM
	AllTypes t1
WHERE
	t1.ID > $lastId
ORDER BY
	t1.ID

-- YDB Ydb
DECLARE $lastId Int32
SET     $lastId = 3

DELETE FROM
	AllTypes
WHERE
	AllTypes.ID >= $lastId

