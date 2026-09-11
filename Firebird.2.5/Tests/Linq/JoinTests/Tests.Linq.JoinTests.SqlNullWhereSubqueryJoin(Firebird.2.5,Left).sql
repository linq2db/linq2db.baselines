-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"p2"."ParentID",
	"p2"."Value1"
FROM
	(
		SELECT FIRST @take
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
	) "p1"
		LEFT JOIN (
			SELECT FIRST 10
				"p"."ParentID",
				"p"."Value1"
			FROM
				"Parent" "p"
		) "p2" ON "p1"."ParentID" = "p2"."ParentID" AND ("p1"."Value1" = "p2"."Value1" OR "p1"."Value1" IS NULL AND "p2"."Value1" IS NULL)

