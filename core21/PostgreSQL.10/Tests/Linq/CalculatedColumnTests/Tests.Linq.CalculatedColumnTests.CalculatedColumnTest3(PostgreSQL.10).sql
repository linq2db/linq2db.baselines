BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT 
	(
		SELECT 
			Count(*)
		FROM
			"Doctor" d
		WHERE
			d."PersonID" = i."PersonID"
	), 
	i."PersonID", 
	i."FirstName", 
	i."LastName", 
	i."MiddleName", 
	i."Gender", 
	i."LastName" || ', ' || i."FirstName", 
	(
		SELECT 
			Count(*)
		FROM
			"Doctor" d_1
		WHERE
			d_1."PersonID" = i."PersonID"
	)
FROM
	"Person" i
WHERE
	i."FirstName" <> 'John'

