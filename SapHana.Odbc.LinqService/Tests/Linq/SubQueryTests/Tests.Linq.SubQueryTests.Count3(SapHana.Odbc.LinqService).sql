BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p_1"."ParentID",
	"p_1"."SUM_1" / 2
FROM
	(
		SELECT
			(
				SELECT
					SUM("a_Children"."ParentID")
				FROM
					"Child" "a_Children"
				WHERE
					"p"."ParentID" = "a_Children"."ParentID"
			) as "SUM_1",
			"p"."ParentID"
		FROM
			"Parent" "p"
	) "p_1"
WHERE
	"p_1"."SUM_1" / 2 > 1

