BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN p."FirstName" IS NULL OR Length(p."FirstName") = 0 THEN 1
		ELSE 0
	END
FROM
	"Person" p
WHERE
	p."PersonID" = 1

