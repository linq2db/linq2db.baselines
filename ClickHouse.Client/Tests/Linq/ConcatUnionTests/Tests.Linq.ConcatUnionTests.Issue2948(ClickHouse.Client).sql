BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	(
		SELECT
			ROW_NUMBER() OVER(PARTITION BY x.PersonID ORDER BY x.PersonID) as Rank,
			x.PersonID as Id,
			x.FirstName as Name
		FROM
			Person x
	) t1
WHERE
	t1.Rank = toInt64(1) AND t1.Id <> 2
UNION ALL
SELECT
	t2.Id as Id,
	t2.Name as Name
FROM
	(
		SELECT
			x_2.Id as Id,
			x_2.Name as Name
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY x_1.PersonID ORDER BY x_1.PersonID) as Rank,
					x_1.PersonID as Id,
					x_1.FirstName as Name
				FROM
					Person x_1
			) x_2
		WHERE
			x_2.Rank = toInt64(1) AND x_2.Id = 2
		ORDER BY
			x_2.Name DESC
		LIMIT 1
	) t2
UNION ALL
SELECT
	t3.Id as Id,
	t3.Name as Name
FROM
	(
		SELECT
			x_4.Id as Id,
			x_4.Name as Name
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY x_3.PersonID ORDER BY x_3.PersonID) as Rank,
					x_3.PersonID as Id,
					x_3.FirstName as Name
				FROM
					Person x_3
			) x_4
		WHERE
			x_4.Rank = toInt64(1) AND x_4.Id <> 3
		ORDER BY
			x_4.Name
		LIMIT 1
	) t3

