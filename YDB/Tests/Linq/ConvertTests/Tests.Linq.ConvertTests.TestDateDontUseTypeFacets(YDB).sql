-- YDB Ydb

SELECT
	g_2.Date_1 as Date_1,
	COUNT(*) as Count_1
FROM
	(
		SELECT
			DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(g_1.CreatedOnUtc))) as Date_1
		FROM
			Issue5390Table g_1
	) g_2
GROUP BY
	g_2.Date_1

-- YDB Ydb

SELECT
	t1.CreatedOnUtc as CreatedOnUtc
FROM
	Issue5390Table t1

