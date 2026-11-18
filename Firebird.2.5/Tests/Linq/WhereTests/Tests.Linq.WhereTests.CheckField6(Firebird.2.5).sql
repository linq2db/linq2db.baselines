-- Firebird.2.5 Firebird
SELECT
	"p"."ParentID",
	"p"."Value1",
	"p"."Value1" * 100
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1 AND "p"."Value1" * 100 > 0

