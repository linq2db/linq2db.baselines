BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID as Id,
	t1.FirstName as Name
FROM
	(
		SELECT
			ROW_NUMBER() OVER(PARTITION BY x.PersonID ORDER BY x.PersonID) as Rank,
			x.PersonID as ID,
			x.FirstName as FirstName
		FROM
			Person x
	) t1
WHERE
	t1.Rank = toInt64(1) AND t1.ID <> 2
UNION ALL
SELECT
	t2.ID as Id,
	t2.FirstName as Name
FROM
	(
		SELECT
			x_2.ID as ID,
			x_2.FirstName as FirstName
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY x_1.PersonID ORDER BY x_1.PersonID) as Rank,
					x_1.PersonID as ID,
					x_1.FirstName as FirstName
				FROM
					Person x_1
			) x_2
		WHERE
			x_2.Rank = toInt64(1) AND x_2.ID = 2
		ORDER BY
			x_2.FirstName DESC
		LIMIT 1
	) t2
UNION ALL
SELECT
	t3.ID as Id,
	t3.FirstName as Name
FROM
	(
		SELECT
			x_4.ID as ID,
			x_4.FirstName as FirstName
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY x_3.PersonID ORDER BY x_3.PersonID) as Rank,
					x_3.PersonID as ID,
					x_3.FirstName as FirstName
				FROM
					Person x_3
			) x_4
		WHERE
			x_4.Rank = toInt64(1) AND x_4.ID <> 3
		ORDER BY
			x_4.FirstName
		LIMIT 1
	) t3

