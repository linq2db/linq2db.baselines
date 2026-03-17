-- Firebird.3 Firebird3
DECLARE @user Integer -- Int32
SET     @user = 3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @user

