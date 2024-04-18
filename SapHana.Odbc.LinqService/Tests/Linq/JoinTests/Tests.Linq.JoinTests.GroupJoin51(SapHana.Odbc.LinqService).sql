BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"key_data_result"."ParentID",
	"key_data_result"."Value1",
	"_gjd_ch"."ParentID",
	"_gjd_ch"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID",
			"p"."Value1"
		FROM
			"Parent" "p"
		WHERE
			"p"."ParentID" = 1
	) "key_data_result"
		INNER JOIN "Child" "_gjd_ch" ON "_gjd_ch"."ParentID" = "key_data_result"."ParentID"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	"p"."Value1",
	"ch"."ParentID",
	"ch"."ChildID"
FROM
	"Parent" "p"
		LEFT JOIN "Child" "ch" ON "ch"."ParentID" = "p"."ParentID"
WHERE
	"p"."ParentID" = 1
ORDER BY
	"ch"."ChildID" DESC

