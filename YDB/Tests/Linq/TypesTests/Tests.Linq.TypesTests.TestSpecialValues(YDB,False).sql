-- YDB Ydb

SELECT
	MAX(t1.ID) as Max_1
FROM
	AllTypes t1

-- YDB Ydb
DECLARE $real Float -- Single
SET     $real = Float('NaN')
DECLARE $dbl Double
SET     $dbl = Double('NaN')

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1000,
	$real,
	$dbl
)

-- YDB Ydb
DECLARE $real Float -- Single
SET     $real = Float('-inf')
DECLARE $dbl Double
SET     $dbl = Double('-inf')

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1001,
	$real,
	$dbl
)

-- YDB Ydb
DECLARE $real Float -- Single
SET     $real = Float('inf')
DECLARE $dbl Double
SET     $dbl = Double('inf')

INSERT INTO AllTypes
(
	ID,
	floatDataType,
	doubleDataType
)
VALUES
(
	1002,
	$real,
	$dbl
)

-- YDB Ydb
DECLARE $maxID Int32
SET     $maxID = 2

SELECT
	t1.floatDataType as floatDataType,
	t1.doubleDataType as doubleDataType
FROM
	AllTypes t1
WHERE
	t1.ID > $maxID
ORDER BY
	t1.ID

