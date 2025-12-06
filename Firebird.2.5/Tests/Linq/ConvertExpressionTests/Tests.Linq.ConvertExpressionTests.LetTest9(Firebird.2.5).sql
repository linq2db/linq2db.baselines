-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT FIRST @take
	(
		SELECT FIRST 1
			"c_1"."ParentID"
		FROM
			"Child" "c_1"
		WHERE
			"c_1"."ParentID" = "p"."ParentID"
		ORDER BY
			"c_1"."ChildID"
	),
	(
		SELECT FIRST 1
			"c_2"."ChildID"
		FROM
			"Child" "c_2"
		WHERE
			"c_2"."ParentID" = "p"."ParentID"
		ORDER BY
			"c_2"."ChildID"
	)
FROM
	"Parent" "p"

