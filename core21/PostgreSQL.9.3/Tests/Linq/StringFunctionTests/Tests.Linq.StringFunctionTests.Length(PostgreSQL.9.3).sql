BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @Length_1 Integer -- Int32
SET     @Length_1 = 4

SELECT 
	p."FirstName", 
	p."PersonID", 
	p."LastName", 
	p."MiddleName", 
	p."Gender"
FROM
	"Person" p
WHERE
	Length(p."FirstName") = :Length_1 AND p."PersonID" = 1

