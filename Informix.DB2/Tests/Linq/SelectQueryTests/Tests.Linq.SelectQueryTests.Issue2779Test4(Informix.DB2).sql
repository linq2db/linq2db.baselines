BeforeExecute
-- Informix.DB2 Informix

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
				SELECT 1 as value
			) t1("value")
		WHERE
			x.PersonID = t1."value"
	)

