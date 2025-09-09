BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)
DECLARE @skip Integer -- Int32
SET     @skip = 1
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"t2"."ParentID",
	"t2"."Value1"
FROM
	(
		SELECT
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) "t2"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

