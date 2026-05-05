-- PostgreSQL.13 PostgreSQL

SELECT
	p_1."ID",
	p_1."FirstName"
FROM
	(
		SELECT
			'123' || p."FirstName" || '012345' as "FirstName",
			p."FirstName" as "FirstName_1",
			p."PersonID" as "ID"
		FROM
			"Person" p
		WHERE
			p."PersonID" = 1
	) p_1
WHERE
	Length('123' || p_1."FirstName_1" || '012345') - Position('321' in Reverse(Substring(p_1."FirstName", 6, Length('123' || p_1."FirstName_1" || '012345') - 5))) = 10 AND
	Position('123' in Substring(p_1."FirstName", 6, Length(p_1."FirstName") - 6)) + 5 <> 0

