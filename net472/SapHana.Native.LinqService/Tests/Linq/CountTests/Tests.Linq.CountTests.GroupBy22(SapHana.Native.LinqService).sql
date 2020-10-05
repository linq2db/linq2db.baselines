BeforeExecute
-- SapHana.Native SapHana
DECLARE @n  -- Int32
SET     @n = 1
DECLARE @n_1  -- Int32
SET     @n_1 = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT
					"ch"."ParentID" + 1 as "ParentID"
				FROM
					"Child" "ch"
			) "ch_1"
		WHERE
			"ch_1"."ParentID" < 3 AND "ch_3"."ParentID" = "ch_1"."ParentID" AND
			"ch_1"."ParentID" + 1 > :"n"
	)
FROM
	(
		SELECT
			"ch_2"."ParentID" + 1 as "ParentID"
		FROM
			"Child" "ch_2"
	) "ch_3"
WHERE
	"ch_3"."ParentID" + 1 > :"n_1"
GROUP BY
	"ch_3"."ParentID"

