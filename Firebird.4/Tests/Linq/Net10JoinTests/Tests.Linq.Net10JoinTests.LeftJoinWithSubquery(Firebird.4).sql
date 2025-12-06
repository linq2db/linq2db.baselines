-- Firebird.4 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"p_1"."ParentID",
	"c_1"."ChildID"
FROM
	(
		SELECT
			"p"."ParentID"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" > 0
		FETCH NEXT @take ROWS ONLY
	) "p_1"
		LEFT JOIN "Child" "c_1" ON "p_1"."ParentID" = "c_1"."ParentID"

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

