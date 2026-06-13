-- YDB Ydb

SELECT
	CurrentUtcTimestamp() + DateTime::IntervalFromDays(t.`Value`) as Value1,
	CurrentUtcTimestamp() + DateTime::IntervalFromDays(2) as Value2
FROM
	SampleClass t
WHERE
	t.`Value` = 1
UNION
SELECT
	CurrentUtcTimestamp() + DateTime::IntervalFromDays(3) as Value1,
	CurrentUtcTimestamp() + DateTime::IntervalFromDays(4) as Value2

-- YDB Ydb

SELECT
	v_1.Value2 as Value2
FROM
	(
		SELECT
			CurrentUtcTimestamp() + DateTime::IntervalFromDays(v.`Value`) as Value1,
			CurrentUtcTimestamp() + DateTime::IntervalFromDays(2) as Value2
		FROM
			SampleClass v
		WHERE
			v.`Value` = 1
		UNION
		SELECT
			CurrentUtcTimestamp() + DateTime::IntervalFromDays(3) as Value1,
			CurrentUtcTimestamp() + DateTime::IntervalFromDays(4) as Value2
	) v_1

