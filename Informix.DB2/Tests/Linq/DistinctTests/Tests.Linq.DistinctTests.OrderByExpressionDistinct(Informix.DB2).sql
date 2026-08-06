-- Informix.DB2 Informix
SELECT
	x_1.MiddleName,
	x_1.LastName
FROM
	(
		SELECT DISTINCT
			x.MiddleName,
			NULLIF(x.LastName, 'Pupkin') as LastName
		FROM
			Person x
	) x_1
ORDER BY
	Nvl(x_1.MiddleName, '-2') DESC,
	Nvl(x_1.LastName, '-1')

-- Informix.DB2 Informix
SELECT
	t1.FirstName,
	t1.PersonID,
	t1.LastName,
	t1.MiddleName,
	t1.Gender
FROM
	Person t1

