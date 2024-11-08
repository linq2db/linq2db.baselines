BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CASE
		WHEN "r"."PersonID" IN (1, 2, 3) THEN 1
		ELSE 0
	END
FROM
	"Person" "r"

