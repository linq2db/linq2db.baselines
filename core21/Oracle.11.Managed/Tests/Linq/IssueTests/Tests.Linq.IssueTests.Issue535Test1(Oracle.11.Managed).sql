BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

SELECT
	p."PersonID",
	p."FirstName",
	p."LastName"
FROM
	"Person" p
WHERE
	p."FirstName" LIKE 'J%' ESCAPE '~' AND (p."PersonID" = 1 OR p."LastName" = 'fail') AND
	ROWNUM <= :take

