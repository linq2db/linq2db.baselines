BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @p  -- Int32
SET     @p = 0

SELECT
	CASE
		WHEN "q"."ParentID" IS NOT NULL THEN "q"."ParentID"
		ELSE ?
	END
FROM
	"Parent" "q"

