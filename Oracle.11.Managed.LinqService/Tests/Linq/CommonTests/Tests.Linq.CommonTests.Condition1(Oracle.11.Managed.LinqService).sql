BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)

SELECT
	CASE
		WHEN Length(p."FirstName") <> 0 THEN p."FirstName"
		WHEN NOT (p."MiddleName" IS NULL OR Length(p."MiddleName") = 0)
			THEN p."MiddleName"
		ELSE p."LastName"
	END
FROM
	"Person" p

