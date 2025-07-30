BeforeExecute
-- Firebird.4 Firebird4
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = @p
ORDER BY
	"x"."ParentID" DESC
FETCH NEXT 1 ROWS ONLY

