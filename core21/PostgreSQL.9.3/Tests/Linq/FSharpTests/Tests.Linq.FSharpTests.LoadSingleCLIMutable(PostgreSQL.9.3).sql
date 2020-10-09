BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	p."PersonID", 
	p."FirstName", 
	p."LastName", 
	p."MiddleName", 
	p."Gender", 
	"a_Patient"."PersonID", 
	"a_Patient"."Diagnosis"
FROM
	"Person" p
		LEFT JOIN "Patient" "a_Patient" ON p."PersonID" = "a_Patient"."PersonID"
WHERE
	p."PersonID" = 1
LIMIT :take

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT 
	p."PersonID", 
	p."FirstName", 
	p."LastName", 
	p."MiddleName", 
	p."Gender", 
	"a_Patient"."PersonID", 
	"a_Patient"."Diagnosis"
FROM
	"Person" p
		LEFT JOIN "Patient" "a_Patient" ON p."PersonID" = "a_Patient"."PersonID"
WHERE
	p."PersonID" = 2
LIMIT :take

