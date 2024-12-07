BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	t1.ID as Id,
	t1.FirstName as Name
FROM
	(
		SELECT
			ROW_NUMBER() OVER(PARTITION BY p.PersonID ORDER BY p.PersonID) as Rank,
			p.PersonID as ID,
			p.FirstName as FirstName
		FROM
			Person p
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
			x.ID as ID,
			x.FirstName as FirstName
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY p_1.PersonID ORDER BY p_1.PersonID) as Rank,
					p_1.PersonID as ID,
					p_1.FirstName as FirstName
				FROM
					Person p_1
			) x
		WHERE
			x.Rank = toInt64(1) AND x.ID = 2
		ORDER BY
			x.FirstName DESC
		LIMIT 1
	) t2
UNION ALL
SELECT
	t3.ID as Id,
	t3.FirstName as Name
FROM
	(
		SELECT
			x_1.ID as ID,
			x_1.FirstName as FirstName
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY p_2.PersonID ORDER BY p_2.PersonID) as Rank,
					p_2.PersonID as ID,
					p_2.FirstName as FirstName
				FROM
					Person p_2
			) x_1
		WHERE
			x_1.Rank = toInt64(1) AND x_1.ID <> 3
		ORDER BY
			x_1.FirstName
		LIMIT 1
	) t3

