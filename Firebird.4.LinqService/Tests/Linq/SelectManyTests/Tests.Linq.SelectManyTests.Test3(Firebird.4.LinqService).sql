BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	COUNT(*)
FROM
	"Parent" "t1"
		INNER JOIN "GrandChild" "g_1" ON "t1"."ParentID" = "g_1"."ParentID"
		CROSS JOIN "Person" "t"

