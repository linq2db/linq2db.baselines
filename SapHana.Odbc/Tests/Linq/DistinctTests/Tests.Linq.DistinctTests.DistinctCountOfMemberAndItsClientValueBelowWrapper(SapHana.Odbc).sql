-- SapHana.Odbc SapHanaOdbc
SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"c_1"."ChildID"
		FROM
			"Child" "c_1"
	) "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @take Int -- Int32
SET     @take = 100

SELECT
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			"t1"."ChildID"
		FROM
			(
				SELECT
					"c_1"."ChildID"
				FROM
					"Child" "c_1"
				LIMIT ?
			) "t1"
	) "t2"

