-- YDB Ydb

$CTE_1 = 	SELECT
		t1.Value1 as Value1
	FROM
		(
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
		) t1
	LIMIT 1
;
$CTE_2 = 	SELECT
		t2.Value2 as Value2
	FROM
		(
			SELECT
				CurrentUtcTimestamp() + DateTime::IntervalFromDays(t_1.`Value`) as Value1,
				CurrentUtcTimestamp() + DateTime::IntervalFromDays(2) as Value2
			FROM
				SampleClass t_1
			WHERE
				t_1.`Value` = 1
			UNION
			SELECT
				CurrentUtcTimestamp() + DateTime::IntervalFromDays(3) as Value1,
				CurrentUtcTimestamp() + DateTime::IntervalFromDays(4) as Value2
		) t2
	LIMIT 1
;

SELECT
	t_2.Id as Id,
	t_2.`Value` as Value_1,
	$CTE_1 as Value1,
	$CTE_2 as Value2
FROM
	SampleClass t_2

