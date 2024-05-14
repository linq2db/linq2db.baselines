BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @p Text(3) -- String
SET     @p = '123'

SELECT
	p."PersonID",
	'123' || p."FirstName" || '012345'
FROM
	"Person" p
WHERE
	p."PersonID" = 1 AND Length('123' || p."FirstName" || '012345') - Position('321' in Reverse(Substring('123' || p."FirstName" || '012345', 6, Length('123' || p."FirstName" || '012345') - 5))) = 10 AND
	(Position(:p in Substring('123' || p."FirstName" || '012345', 6, Length('123' || p."FirstName" || '012345') - 6)) + 5 <> 0 OR Position(:p in Substring('123' || p."FirstName" || '012345', 6, Length('123' || p."FirstName" || '012345') - 6)) IS NULL)

