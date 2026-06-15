-- YDB Ydb

SELECT
	b_1.Date_1 as Date_1,
	COUNT(*) as Count_1
FROM
	(
		SELECT
			DateTime::MakeTimestamp(DateTime::StartOfDay(DateTime::Split(b.DateTimeValue))) as Date_1
		FROM
			LinqDataTypes b
				INNER JOIN Parent p ON b.ID = p.ParentID
	) b_1
GROUP BY
	b_1.Date_1

