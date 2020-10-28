BeforeExecute
-- Firebird

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" + 1 < 3 AND ("p_1"."Value1" = "p"."Value1" OR "p_1"."Value1" IS NULL AND "p"."Value1" IS NULL) AND
			"p"."ParentID" + 2 > 1
	)
FROM
	"Parent" "p_1"
WHERE
	"p_1"."ParentID" + 2 > 1
GROUP BY
	"p_1"."Value1"

