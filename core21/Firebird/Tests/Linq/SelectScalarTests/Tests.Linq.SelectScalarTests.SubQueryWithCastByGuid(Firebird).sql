BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT 
	"t1"."ParentID", 
	"t1"."Value1"
FROM
	"Parent" "t1"
WHERE
	(
		SELECT FIRST @take 
			"r"."GuidValue"
		FROM
			"LinqDataTypes" "r"
	) IS NOT NULL

