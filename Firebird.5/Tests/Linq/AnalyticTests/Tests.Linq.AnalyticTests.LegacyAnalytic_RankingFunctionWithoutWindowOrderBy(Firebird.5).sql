-- Firebird.5 Firebird4
SELECT
	"p"."ParentID",
	"p"."Value1",
	ROW_NUMBER() OVER (PARTITION BY "p"."Value1")
FROM
	"Parent" "p"

