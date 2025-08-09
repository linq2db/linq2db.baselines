BeforeExecute
-- ClickHouse.Driver ClickHouse

SELECT
	t1.Rank,
	t1.FirstName,
	t1.FirstName_1
FROM
	(
		SELECT
			toInt32(0) as Rank,
			toString(NULL) as FirstName,
			toString(NULL) as FirstName_1
		FROM
			Person p
		WHERE
			p.PersonID < 0
		UNION ALL
		SELECT
			p_1.PersonID as Rank,
			p_1.FirstName as FirstName,
			p_1.LastName as FirstName_1
		FROM
			Person p_1
	) t1
ORDER BY
	t1.Rank,
	t1.FirstName,
	t1.FirstName_1

