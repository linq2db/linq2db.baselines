BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	x.FirstName,
	x.PersonID,
	x.LastName,
	x.MiddleName,
	x.Gender
FROM
	Person x
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT 'John'::NVarChar(255) AS "item" FROM table(set{1})
				UNION ALL
				SELECT 'Not John'::NVarChar(255) FROM table(set{1})) y
		WHERE
			y."item" = x.FirstName
	)

