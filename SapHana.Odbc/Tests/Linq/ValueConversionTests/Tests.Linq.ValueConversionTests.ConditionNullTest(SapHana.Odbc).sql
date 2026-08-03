-- SapHana.Odbc SapHanaOdbc
SELECT
	CASE
		WHEN "i"."item" = 0 THEN NULL
		ELSE "p"."ParentID"
	END,
	"p"."Value1"
FROM
	"Parent" "p",
	(
		SELECT 0 AS "item" FROM DUMMY
		UNION ALL
		SELECT 1 FROM DUMMY) "i"
WHERE
	CASE
		WHEN "i"."item" = 0 THEN NULL
		ELSE "p"."ParentID"
	END = "p"."Value1" OR
	"i"."item" = 0 AND "p"."Value1" IS NULL

