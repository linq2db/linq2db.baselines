BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	i_2.LastName
FROM
	(
		SELECT
			CASE
				WHEN i.MiddleName IS NULL THEN 'M'
				ELSE 'O'
			END as Gender,
			i.FirstName as FirstName,
			i.PersonID as ID,
			i.LastName as LastName,
			i.MiddleName as MiddleName,
			i.Gender as Gender_1
		FROM
			Person i
		UNION ALL
		SELECT
			CASE
				WHEN i_1.MiddleName IS NULL THEN 'M'
				ELSE 'O'
			END as Gender,
			i_1.FirstName as FirstName,
			i_1.PersonID as ID,
			i_1.LastName as LastName,
			i_1.MiddleName as MiddleName,
			i_1.Gender as Gender_1
		FROM
			Person i_1
	) i_2
WHERE
	i_2.Gender = 'O'
ORDER BY
	i_2.FirstName DESC

