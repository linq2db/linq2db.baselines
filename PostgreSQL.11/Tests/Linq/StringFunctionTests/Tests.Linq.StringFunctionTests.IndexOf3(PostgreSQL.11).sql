-- PostgreSQL.11 PostgreSQL
DECLARE @s Text(1) -- String
SET     @s = 'e'
DECLARE @Value Integer -- Int32
SET     @Value = 7
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 3

SELECT
	p."FirstName",
	p."PersonID",
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	CASE
		WHEN Position(:s in Substring(Substring(p."LastName", 1, :Value), :Value_1)) = 0
			THEN 0
		ELSE Position(:s in Substring(Substring(p."LastName", 1, :Value), :Value_1)) + :Value_1 - 1
	END - 1 = 4 AND
	p."PersonID" = 2

