-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"
ORDER BY
	"t1"."ChildID"

-- Firebird.2.5 Firebird
SELECT
	(
		SELECT FIRST 1
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		ORDER BY
			"t1"."ParentID"
	)
FROM rdb$database

