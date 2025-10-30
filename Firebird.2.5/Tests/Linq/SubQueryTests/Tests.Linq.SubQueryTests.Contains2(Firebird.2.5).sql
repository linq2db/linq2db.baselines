-- Firebird.2.5 Firebird

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST 3
					"p1"."ParentID"
				FROM
					"Parent" "p1"
				WHERE
					"p1"."Value1" = "p"."Value1" OR "p1"."Value1" IS NULL AND "p"."Value1" IS NULL
			) "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)

