BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN "selectParam"."ParentID" > 2
			THEN CASE
			WHEN "selectParam"."ParentID" > 3
				THEN '1'
			ELSE '2'
		END
		ELSE '3'
	END
FROM
	"Child" "selectParam"
GROUP BY
	CASE
		WHEN "selectParam"."ParentID" > 2
			THEN CASE
			WHEN "selectParam"."ParentID" > 3
				THEN '1'
			ELSE '2'
		END
		ELSE '3'
	END

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p_1 NVarChar(1) -- String
SET     @p_1 = '1'

SELECT
	"selectParam"."ParentID",
	"selectParam"."ChildID"
FROM
	"Child" "selectParam"
WHERE
	CASE
		WHEN "selectParam"."ParentID" > 2
			THEN CASE
			WHEN "selectParam"."ParentID" > 3
				THEN '1'
			ELSE '2'
		END
		ELSE '3'
	END = ?

