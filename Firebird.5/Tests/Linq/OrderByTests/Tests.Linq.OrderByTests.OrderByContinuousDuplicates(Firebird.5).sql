-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
		INNER JOIN "Parent" "pp" ON "p"."ParentID" = "pp"."ParentID"
ORDER BY
	"p"."ParentID" DESC

