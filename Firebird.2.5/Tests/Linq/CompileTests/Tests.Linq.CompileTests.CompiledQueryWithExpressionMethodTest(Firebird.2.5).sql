BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT FIRST 1
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = @p
ORDER BY
	"x"."ParentID" DESC

