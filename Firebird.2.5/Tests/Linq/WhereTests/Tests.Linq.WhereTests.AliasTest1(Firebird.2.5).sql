BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @user Integer -- Int32
SET     @user = 3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @user

