BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."ParentID" > 2
					THEN CASE
					WHEN "selectParam"."ParentID" > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as "c1"
		FROM
			"Child" "selectParam"
	) "t1"
GROUP BY
	"t1"."c1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1 NVarChar(1) -- String
SET     @p_1 = '1'

SELECT
	"underscore"."ParentID",
	"underscore"."ChildID"
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."ParentID" > 2
					THEN CASE
					WHEN "selectParam"."ParentID" > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as "Key_1",
			"selectParam"."ParentID",
			"selectParam"."ChildID"
		FROM
			"Child" "selectParam"
	) "underscore"
WHERE
	"underscore"."Key_1" = ?

