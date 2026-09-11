-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"p_1"."ParentID",
	"c_1"."ChildID"
FROM
	(
		SELECT FIRST @take
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 2
	) "p_1",
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = 2

