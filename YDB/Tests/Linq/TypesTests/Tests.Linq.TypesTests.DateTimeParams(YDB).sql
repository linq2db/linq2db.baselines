-- YDB Ydb
DECLARE $dateTime Timestamp -- DateTime2
SET     $dateTime = Timestamp('1992-01-11T01:11:21.100000Z')

SELECT
	t.DateTimeValue as DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > $dateTime
LIMIT 1

-- YDB Ydb
DECLARE $dateTime Timestamp -- DateTime2
SET     $dateTime = Timestamp('1993-01-11T01:11:21.100000Z')

SELECT
	t.DateTimeValue as DateTimeValue
FROM
	LinqDataTypes t
WHERE
	t.DateTimeValue > $dateTime
LIMIT 1

