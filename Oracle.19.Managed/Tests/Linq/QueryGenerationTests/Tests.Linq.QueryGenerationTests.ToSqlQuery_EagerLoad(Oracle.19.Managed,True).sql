-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = 2

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 2

SELECT
	p."FirstName",
	p."PersonID" as ID,
	p."LastName",
	p."MiddleName",
	p."Gender"
FROM
	"Person" p
WHERE
	p."PersonID" = :id
FETCH NEXT 2 ROWS ONLY

