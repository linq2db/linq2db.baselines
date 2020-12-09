BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	p_1."ID",
	p_1."FirstName_1"
FROM
	(
		SELECT
			'123' || p."FirstName" || '012345' as "FirstName",
			p."PersonID" as "ID",
			p."FirstName" as "FirstName_1"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	) p_1
WHERE
	CASE
		WHEN Position('123' in Substring(p_1."FirstName", 6, Length(p_1."FirstName") - 6)) + 6 - 1 = 0
			THEN -1
		ELSE Length(p_1."FirstName") - Position('321' in Reverse(Substring(p_1."FirstName", 6, Length(p_1."FirstName") - 5))) - 2
	END = 8

