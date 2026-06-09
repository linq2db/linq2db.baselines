-- YDB Ydb
DECLARE $Date Date
SET     $Date = Date('2021-01-01')

INSERT INTO DateOnlyTable
(
	`Date`
)
VALUES
(
	$Date
)

-- YDB Ydb

SELECT
	t1.`Date` as Date_1
FROM
	DateOnlyTable t1
LIMIT 2

