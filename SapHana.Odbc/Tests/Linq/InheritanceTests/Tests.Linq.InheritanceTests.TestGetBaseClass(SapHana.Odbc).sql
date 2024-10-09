BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN "x"."Value1" = 2 THEN 1
		ELSE 0
	END,
	"x"."ParentID",
	"x"."Value1",
	CASE
		WHEN "x"."Value1" = 1 THEN 1
		ELSE 0
	END,
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."Value1" = 1 OR "x"."Value1" = 2

