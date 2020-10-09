BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	(
		SELECT FIRST @take DISTINCT
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
		WHERE
			"p"."ParentID" = "c_1"."ParentID"
	)
FROM
	"Parent" "p"

