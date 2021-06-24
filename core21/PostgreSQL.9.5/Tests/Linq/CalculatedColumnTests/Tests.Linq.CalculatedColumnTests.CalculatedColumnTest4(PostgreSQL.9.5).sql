BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t1."PersonID",
	t1."FirstName",
	t1."LastName",
	t1."MiddleName",
	t1."Gender",
	t1."FullName",
	t1."AsSqlFullName",
	t1."DoctorCount"
FROM
	"Doctor" cp
		INNER JOIN (
			SELECT
				c_1."PersonID",
				c_1."FirstName",
				c_1."LastName",
				c_1."MiddleName",
				c_1."Gender",
				c_1."LastName" || ', ' || c_1."FirstName" as "FullName",
				c_1."LastName" || ', ' || c_1."FirstName" as "AsSqlFullName",
				(
					SELECT
						Count(*)
					FROM
						"Doctor" d
					WHERE
						d."PersonID" = c_1."PersonID"
				) as "DoctorCount"
			FROM
				"Person" c_1
		) t1 ON cp."PersonID" = t1."PersonID"

