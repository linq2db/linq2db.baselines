-- Firebird.5 Firebird4
SELECT
	"p"."ParentID",
	ROW_NUMBER() OVER (),
	ROW_NUMBER() OVER (ORDER BY "p"."ParentID"),
	ROW_NUMBER() OVER (ORDER BY "p"."ParentID")
FROM
	"Parent" "p"

