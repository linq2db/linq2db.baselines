BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	pp.ID,
	pp."Name_1"
FROM
	(
		SELECT
			'  ' || p."FirstName" || ' ' as "Name",
			p."PersonID" as ID,
			p."FirstName" as "Name_1"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	) pp
WHERE
	Trim(pp."Name") = 'John'

