BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" "c_1"
					LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
			WHERE
				"a_Parent"."ParentID" = "p"."ParentID" AND "a_Parent"."ParentID" IS NOT NULL AND
				("a_Parent"."Value1" = "p"."Value1" AND "a_Parent"."Value1" IS NOT NULL AND "p"."Value1" IS NOT NULL OR "a_Parent"."Value1" IS NULL AND "p"."Value1" IS NULL)
		)
			THEN 1
		ELSE 0
	END
FROM
	"Parent" "p"

