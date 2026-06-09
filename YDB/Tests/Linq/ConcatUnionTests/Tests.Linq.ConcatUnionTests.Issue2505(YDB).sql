-- YDB Ydb

SELECT
	i_2.LastName as LastName
FROM
	(
		SELECT
			CASE
				WHEN i.MiddleName IS NULL THEN 'M'u
				ELSE 'O'u
			END as Gender,
			i.FirstName as FirstName,
			i.LastName as LastName
		FROM
			Person i
		UNION ALL
		SELECT
			CASE
				WHEN i_1.MiddleName IS NULL THEN 'M'u
				ELSE 'O'u
			END as Gender,
			i_1.FirstName as FirstName,
			i_1.LastName as LastName
		FROM
			Person i_1
	) i_2
WHERE
	i_2.Gender = 'O'u
ORDER BY
	i_2.FirstName DESC

