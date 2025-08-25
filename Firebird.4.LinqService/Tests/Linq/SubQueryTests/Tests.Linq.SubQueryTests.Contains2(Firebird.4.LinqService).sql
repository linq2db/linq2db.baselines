BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

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
					"p1"."ParentID"
				FROM
					"Parent" "p1"
				WHERE
					"p1"."Value1" = "p"."Value1" OR "p1"."Value1" IS NULL AND "p"."Value1" IS NULL
				FETCH NEXT 3 ROWS ONLY
			) "t1"
		WHERE
			"p"."ParentID" = "t1"."ParentID"
	)

