-- YDB Ydb
DECLARE $test Timestamp -- DateTime2
SET     $test = Timestamp('2026-06-06T02:01:01.000000Z')

UPDATE
	Issue5975Row
SET
	`Date` = CASE
		WHEN Issue5975Row.`Date` IS NOT NULL THEN $test
		ELSE Issue5975Row.Plain + DateTime::IntervalFromDays(1)
	END

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Plain as Plain,
	t1.`Date` as Date_1
FROM
	Issue5975Row t1
ORDER BY
	t1.Id

