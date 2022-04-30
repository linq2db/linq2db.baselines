BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @n  -- Int32
SET     @n = -1
DECLARE @n_1  -- Int32
SET     @n_1 = -1

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" < 2 AND "t1"."ParentID" = "ch"."ParentID" + 1 AND
			"ch"."ParentID" > ?
	)
FROM
	(
		SELECT
			"ch_1"."ParentID" + 1 as "ParentID"
		FROM
			"Child" "ch_1"
		WHERE
			"ch_1"."ParentID" > ?
	) "t1"
GROUP BY
	"t1"."ParentID"

