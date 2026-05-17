-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

SELECT
	x."FirstName",
	x."PersonID" as ID,
	x."LastName",
	x."MiddleName",
	x."Gender"
FROM
	"Person" x
WHERE
	x."FirstName" LIKE 'J%' ESCAPE '~'
ORDER BY
	x."PersonID" DESC
OFFSET :skip ROWS FETCH NEXT :take ROWS ONLY 

