-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 2

SELECT
	"x"."FirstName",
	"x"."PersonID",
	"x"."LastName",
	"x"."MiddleName",
	"x"."Gender"
FROM
	"Person" "x"
WHERE
	"x"."FirstName" LIKE 'J%' ESCAPE '~'
ORDER BY
	"x"."PersonID" DESC
OFFSET 1 ROWS FETCH NEXT @take ROWS ONLY 

