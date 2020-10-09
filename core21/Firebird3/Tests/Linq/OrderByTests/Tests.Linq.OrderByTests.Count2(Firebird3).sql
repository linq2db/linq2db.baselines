BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT 
	Count(*)
FROM
	( 
		SELECT FIRST @take 
			"t1"."ParentID", 
			"t1"."Value1"
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
	) "t2"

