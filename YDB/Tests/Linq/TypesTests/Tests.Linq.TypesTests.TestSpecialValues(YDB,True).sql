-- YDB Ydb

SELECT
	MAX(t1.ID) as Max_1
FROM
	AllTypes t1

-- YDB Ydb

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1000,
	Float('NaN'),
	Double('NaN')
)

-- YDB Ydb

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1001,
	Float('-inf'),
	Double('-inf')
)

-- YDB Ydb

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1002,
	Float('inf'),
	Double('inf')
)

-- YDB Ydb

SELECT
	t1.floatDataType as floatDataType,
	t1.doubleDataType as doubleDataType
FROM
	AllTypes t1
WHERE
	t1.ID > 2
ORDER BY
	t1.ID

