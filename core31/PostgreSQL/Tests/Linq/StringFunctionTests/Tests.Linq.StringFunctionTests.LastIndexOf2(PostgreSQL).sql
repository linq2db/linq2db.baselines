BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	p."PersonID",
	p."FirstName"
FROM
	"Person" p
WHERE
	CASE
		WHEN Position('123' in Substring('123' || p."FirstName" || '012345', 6, Length('123' || p."FirstName" || '012345') - 6)) + 5 = 0
			THEN -1
		ELSE Length('123' || p."FirstName" || '012345') - Position('321' in Reverse(Substring('123' || p."FirstName" || '012345', 6, Length('123' || p."FirstName" || '012345') - 5))) - 2
	END = 8 AND
	p."PersonID" = 1

