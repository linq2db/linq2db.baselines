BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 3

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	("p"."ParentID" IN (
		SELECT
			"t1"."ParentID"
		FROM
			(
				SELECT FIRST @take
					"p"."ParentID"
				FROM
					"Parent" "p1"
				WHERE
					("p1"."Value1" = "p"."Value1" OR "p1"."Value1" IS NULL AND "p"."Value1" IS NULL)
			) "t1"
	))

