BeforeExecute
-- Firebird3 Firebird
DECLARE @user_1 Integer -- Int32
SET     @user_1 = 3

SELECT 
	"p"."ParentID", 
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @user_1

