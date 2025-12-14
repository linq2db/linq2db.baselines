-- Firebird.5 Firebird4

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
				SELECT
					*
				FROM
					"Parent" "p1"
				WHERE
					"p1"."Value1" = "p"."Value1" OR "p1"."Value1" IS NULL AND "p"."Value1" IS NULL
				FETCH NEXT 3 ROWS ONLY
			) "t1"
	)

