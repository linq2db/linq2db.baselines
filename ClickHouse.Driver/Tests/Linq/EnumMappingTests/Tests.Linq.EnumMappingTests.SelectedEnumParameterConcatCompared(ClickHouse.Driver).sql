-- ClickHouse.Driver ClickHouse
SELECT
	p_2.ID,
	p_2.Gender
FROM
	(
		SELECT
			toInt32(1) as Gender,
			p.PersonID as ID
		FROM
			Person p
		UNION ALL
		SELECT
			toInt32(1) as Gender,
			p_1.PersonID as ID
		FROM
			Person p_1
	) p_2
WHERE
	p_2.Gender = 1

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

