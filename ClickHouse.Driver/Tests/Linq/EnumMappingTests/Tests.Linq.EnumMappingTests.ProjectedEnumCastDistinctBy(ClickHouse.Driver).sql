-- ClickHouse.Driver ClickHouse
SELECT
	p.Gender
FROM
	(
		SELECT
			toInt64(ROW_NUMBER() OVER (PARTITION BY e.Gender ORDER BY e.PersonID)) as RowNumber,
			e.PersonID as ID,
			e.Gender as Gender
		FROM
			Person e
	) p
WHERE
	p.RowNumber = toInt64(1)
ORDER BY
	p.ID

-- ClickHouse.Driver ClickHouse
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

