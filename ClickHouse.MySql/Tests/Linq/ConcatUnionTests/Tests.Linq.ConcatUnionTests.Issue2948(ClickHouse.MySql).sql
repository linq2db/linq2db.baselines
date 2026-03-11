-- ClickHouse.MySql ClickHouse

SELECT
	t1.Id,
	t1.Name
FROM
	(
		SELECT
			ROW_NUMBER() OVER(PARTITION BY p.PersonID ORDER BY p.PersonID) as Rank,
			p.PersonID as Id,
			p.FirstName as Name
		FROM
			Person p
	) t1
WHERE
	t1.Rank = toInt64(1) AND t1.Id <> 2
UNION ALL
SELECT
	t3.ID as Id,
	t3.Name as Name
FROM
	(
		SELECT
			t2.ID as ID,
			t2.Name as Name
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY p_1.PersonID ORDER BY p_1.PersonID) as Rank,
					p_1.PersonID as ID,
					p_1.FirstName as Name
				FROM
					Person p_1
			) t2
		WHERE
			t2.Rank = toInt64(1) AND t2.ID = 2
		ORDER BY
			t2.Name DESC
		LIMIT 1
	) t3
UNION ALL
SELECT
	t5.ID as Id,
	t5.Name as Name
FROM
	(
		SELECT
			t4.ID as ID,
			t4.Name as Name
		FROM
			(
				SELECT
					ROW_NUMBER() OVER(PARTITION BY p_2.PersonID ORDER BY p_2.PersonID) as Rank,
					p_2.PersonID as ID,
					p_2.FirstName as Name
				FROM
					Person p_2
			) t4
		WHERE
			t4.Rank = toInt64(1) AND t4.ID <> 3
		ORDER BY
			t4.Name
		LIMIT 1
	) t5

