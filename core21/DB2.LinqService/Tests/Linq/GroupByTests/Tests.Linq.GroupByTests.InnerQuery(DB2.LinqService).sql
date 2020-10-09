BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	(
		SELECT 
			"keyParam"."Taxonomy"
		FROM
			"Doctor" "keyParam"
		WHERE
			"t1"."PersonID" = "keyParam"."PersonID"
		FETCH FIRST 1 ROWS ONLY
	)
FROM
	"Doctor" "t1"
GROUP BY
	"t1"."PersonID"

