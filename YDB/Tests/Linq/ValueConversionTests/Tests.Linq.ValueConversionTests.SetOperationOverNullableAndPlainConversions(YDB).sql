-- YDB Ydb
SELECT
	t1.c1 as c1,
	t1.Id as Id,
	t1.Date_1 as Date_1
FROM
	(
		SELECT
			r.Id as Id,
			CAST(NULL AS Timestamp) as c1,
			r.`Date` as Date_1
		FROM
			Issue5976RowA r
		UNION ALL
		SELECT
			r_1.Id as Id,
			r_1.`Date` as c1,
			CAST(NULL AS Timestamp) as Date_1
		FROM
			Issue5976RowC r_1
	) t1
ORDER BY
	t1.Id

