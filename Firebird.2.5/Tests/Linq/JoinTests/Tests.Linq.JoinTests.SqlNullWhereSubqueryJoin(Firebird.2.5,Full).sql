BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10

SELECT
	"p2_1"."ParentID",
	"p2_1"."Value1"
FROM
	(
		SELECT FIRST @take
			"t1"."ParentID",
			"t1"."Value1"
		FROM
			"Parent" "t1"
	) "p1"
		FULL JOIN (
			SELECT FIRST 10
				"p2"."ParentID",
				"p2"."Value1"
			FROM
				"Parent" "p2"
		) "p2_1" ON "p1"."ParentID" = "p2_1"."ParentID" AND ("p1"."Value1" = "p2_1"."Value1" OR "p1"."Value1" IS NULL AND "p2_1"."Value1" IS NULL)

