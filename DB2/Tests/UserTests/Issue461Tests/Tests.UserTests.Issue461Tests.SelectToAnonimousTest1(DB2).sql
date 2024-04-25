BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id_1",
	"t1"."Id"
FROM
	"Parent" "sep"
		LEFT JOIN (
			SELECT
				"l"."ParentID" + 1 as "Id",
				"l"."ParentID" + 1 as "Id_1"
			FROM
				"Child" "l"
			FETCH FIRST 1 ROWS ONLY
		) "t1" ON 1=1

