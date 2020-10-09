BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	"p"."ParentID", 
	(
		SELECT FIRST @take 
			"c_1"."ParentID" + 1
		FROM
			"Child" "c_1"
	)
FROM
	"Parent" "p"

