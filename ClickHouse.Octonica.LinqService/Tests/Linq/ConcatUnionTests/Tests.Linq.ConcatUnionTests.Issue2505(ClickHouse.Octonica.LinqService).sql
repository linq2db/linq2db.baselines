BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

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
			i.LastName as LastName
		FROM
			Person i
		UNION ALL
		SELECT
			CASE
				WHEN i_1.MiddleName IS NULL THEN 'M'
				ELSE 'O'
			END as Gender,
			i_1.FirstName as FirstName,
			i_1.LastName as LastName
		FROM
			Person i_1
	) i_2
WHERE
	i_2.Gender = 'O'
ORDER BY
	i_2.FirstName DESC

