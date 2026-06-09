-- YDB Ydb

SELECT
	t1.ID as ID,
	t1.OK as OK,
	CASE
		WHEN t1.FirstName = 'ddd'u THEN y.FirstName
		ELSE t1.FirstName
	END as FirstName
FROM
	(
		SELECT
			x.PersonID as ID,
			Unwrap(CAST('A'u AS Text)) as FirstName,
			CASE
				WHEN x.FirstName = '123'u THEN 'Y'u
				ELSE 'N'u
			END as OK
		FROM
			Person x
		WHERE
			x.PersonID = 1
		UNION
		SELECT
			x_1.PersonID as ID,
			x_1.FirstName as FirstName,
			Unwrap(CAST('N'u AS Text)) as OK
		FROM
			Person x_1
		WHERE
			x_1.PersonID = 2
	) t1
		LEFT JOIN Person y ON y.PersonID = t1.ID
WHERE
	t1.ID = 3

