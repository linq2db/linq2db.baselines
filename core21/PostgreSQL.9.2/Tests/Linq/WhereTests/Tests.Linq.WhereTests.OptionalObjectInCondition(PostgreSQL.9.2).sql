BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName_1 Text(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	r."FirstName", 
	r."PersonID", 
	r."LastName", 
	r."MiddleName", 
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :FirstName_1

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT 
	r."FirstName", 
	r."PersonID", 
	r."LastName", 
	r."MiddleName", 
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" IS NULL

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @FirstName_1 Text(1) -- String
SET     @FirstName_1 = '1'

SELECT 
	r."FirstName", 
	r."PersonID", 
	r."LastName", 
	r."MiddleName", 
	r."Gender"
FROM
	"Person" r
WHERE
	r."FirstName" = :FirstName_1

