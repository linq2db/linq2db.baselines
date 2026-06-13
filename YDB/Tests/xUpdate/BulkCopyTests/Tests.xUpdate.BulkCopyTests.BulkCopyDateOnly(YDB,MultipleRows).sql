-- YDB Ydb

INSERT INTO DateOnlyTable
(
	`Date`
)
VALUES
(Date('2021-01-01'))

-- YDB Ydb

SELECT
	t1.`Date` as Date_1
FROM
	DateOnlyTable t1
LIMIT 2

