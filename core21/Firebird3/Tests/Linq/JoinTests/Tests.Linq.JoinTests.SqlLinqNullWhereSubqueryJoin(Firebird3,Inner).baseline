BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 10
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 10

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
		INNER JOIN (
			SELECT FIRST @take_1
				"t2"."ParentID",
				"t2"."Value1"
			FROM
				"Parent" "t2"
		) "p2" ON "p1"."ParentID" = "p2"."ParentID" AND ("p1"."Value1" IS NULL AND "p2"."Value1" IS NULL OR "p1"."Value1" = "p2"."Value1")

