BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."ParentID"
FROM
	"Parent" "sep"
		LEFT JOIN (
			SELECT
				"l"."ParentID" + 1 as "Id",
				"l"."ParentID"
			FROM
				"Child" "l"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

