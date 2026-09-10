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
DECLARE $lastId Int32
SET     $lastId = 3

DELETE FROM
	AllTypes
WHERE
	AllTypes.ID >= $lastId

