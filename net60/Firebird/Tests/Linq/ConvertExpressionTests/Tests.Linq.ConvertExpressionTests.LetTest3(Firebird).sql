BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	(
		SELECT FIRST @take
			"p"."ParentID"
		FROM
			"Child" "p"
	)
FROM
	"Parent" "p_1"

