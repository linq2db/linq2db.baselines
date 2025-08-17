BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @pattern VarChar(3) -- String
SET     @pattern = '%1%'

SELECT
	"t1"."FirstName"
FROM
	(
		SELECT
			"p"."FirstName"
		FROM
			"Person" "p"
		WHERE
			"p"."FirstName" LIKE '1'
		UNION ALL
		SELECT
			"p_1"."FirstName"
		FROM
			"Person" "p_1"
		WHERE
			RTrim(Char("p_1"."PersonID")) LIKE @pattern ESCAPE '~'
	) "t1"
FETCH NEXT 10 ROWS ONLY

