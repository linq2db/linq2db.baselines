BeforeExecute
-- PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	CASE
		WHEN Length(p."FirstName") <> 0 THEN p."FirstName"
		WHEN NOT (p."MiddleName" IS NULL OR Length(p."MiddleName") = 0)
			THEN p."MiddleName"
		ELSE p."LastName"
	END
FROM
	"Person" p

