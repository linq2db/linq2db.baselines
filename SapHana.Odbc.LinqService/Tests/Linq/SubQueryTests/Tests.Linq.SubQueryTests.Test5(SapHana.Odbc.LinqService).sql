BeforeExecute
-- SapHana.Odbc SapHanaOdbc (asynchronously)
DECLARE @_testValue Int -- Int32
SET     @_testValue = 3

SELECT
	"id_1"."c1",
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "p"
		WHERE
			"p"."ParentID" = "id_1"."c1"
	),
	(
		SELECT
			COUNT(*)
		FROM
			"Child" "p_1"
		WHERE
			"p_1"."ParentID" = "id_1"."c1" AND "p_1"."ParentID" = ?
	)
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN "id"."Value1" IS NULL THEN "id"."ParentID"
				ELSE "id"."ParentID" + 1
			END as "c1"
		FROM
			"Parent" "id"
		WHERE
			"id"."ParentID" IN (1, 2)
	) "id_1"

