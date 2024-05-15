BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."ParentId"
FROM
	"Parent" "sep"
		LEFT JOIN (
			SELECT
				"l"."ParentID" + 1 as "Id",
				"l"."ParentID" as "ParentId"
			FROM
				"Child" "l"
			FETCH NEXT 1 ROWS ONLY
		) "t1" ON 1=1

