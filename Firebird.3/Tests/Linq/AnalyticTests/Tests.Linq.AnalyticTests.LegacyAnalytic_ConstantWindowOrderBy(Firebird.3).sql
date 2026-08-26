-- Firebird.3 Firebird3
SELECT
	"p"."ParentID",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY "p"."ParentID"),
	ROW_NUMBER() OVER (ORDER BY "p"."ParentID")
FROM
	"Parent" "p"

