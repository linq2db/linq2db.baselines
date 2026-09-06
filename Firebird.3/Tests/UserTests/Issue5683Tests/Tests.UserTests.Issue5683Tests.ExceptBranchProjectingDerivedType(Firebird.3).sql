-- Firebird.3 Firebird3
SELECT DISTINCT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 2 AND NOT EXISTS(
		SELECT
			*
		FROM
			"Parent" "p_1"
		WHERE
			"p_1"."ParentID" <= 4 AND "p"."ParentID" = "p_1"."ParentID" AND
			("p"."Value1" = "p_1"."Value1" OR "p"."Value1" IS NULL AND "p_1"."Value1" IS NULL)
	)

