BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @n  -- Int32
SET     @n = 1
DECLARE @n_1  -- Int32
SET     @n_1 = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Child" "ch"
		WHERE
			"ch"."ParentID" < 2 AND "t1"."c1" = "ch"."ParentID" + 1 AND
			"ch"."ParentID" + 2 > ?
	)
FROM
	(
		SELECT
			"ch_1"."ParentID" + 1 as "c1"
		FROM
			"Child" "ch_1"
		WHERE
			"ch_1"."ParentID" + 2 > ?
	) "t1"
GROUP BY
	"t1"."c1"

