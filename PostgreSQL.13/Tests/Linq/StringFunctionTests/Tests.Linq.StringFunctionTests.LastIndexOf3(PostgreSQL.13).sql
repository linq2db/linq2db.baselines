-- PostgreSQL.13 PostgreSQL

SELECT
	p_1."ID",
	p_1."FirstName"
FROM
	(
		SELECT
			'123' || p."FirstName" || '0123451234' as "FirstName",
			p."PersonID" as "ID"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	) p_1
WHERE
	1 = Position('321' in Reverse(Substring(p_1."FirstName", 6, 6))) AND
	Position('123' in Substring(Substring(p_1."FirstName", 1, 11), 6, Length(Substring(p_1."FirstName", 1, 11)) - 6)) + 5 <> 0

