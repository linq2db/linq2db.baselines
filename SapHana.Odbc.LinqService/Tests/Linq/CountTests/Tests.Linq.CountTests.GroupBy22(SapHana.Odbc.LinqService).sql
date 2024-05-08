BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(CASE
		WHEN "g_2"."ParentID" < 3 THEN 1
		ELSE NULL
	END)
FROM
	(
		SELECT
			"g_1"."ParentID" + 1 as "ParentID"
		FROM
			"Child" "g_1"
		WHERE
			"g_1"."ParentID" > -1
	) "g_2"
GROUP BY
	"g_2"."ParentID"

