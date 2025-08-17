BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	CASE
		WHEN "p"."ParentID" IN (
			SELECT
				"c_1"."ParentID"
			FROM
				"Child" "c_1"
		)
			THEN 1
		ELSE 0
	END
FROM
	"Parent" "p"

