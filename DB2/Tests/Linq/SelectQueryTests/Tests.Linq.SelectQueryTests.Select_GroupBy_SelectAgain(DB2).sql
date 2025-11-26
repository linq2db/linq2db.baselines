-- DB2 DB2.LUW DB2LUW
DECLARE @take Integer(4) -- Int32
SET     @take = 1

SELECT
	COUNT(*) OVER(),
	"x"."Key_1",
	"x"."Count_1",
	"x"."HighestFirstName"
FROM
	(
		SELECT
			"summary"."LastName" as "Key_1",
			COUNT(*) as "Count_1",
			MAX("summary"."FirstName") as "HighestFirstName"
		FROM
			"Person" "summary"
		GROUP BY
			"summary"."LastName"
		HAVING
			COUNT(*) > 5
		OFFSET 1 ROWS FETCH NEXT @take ROWS ONLY 
	) "x"

