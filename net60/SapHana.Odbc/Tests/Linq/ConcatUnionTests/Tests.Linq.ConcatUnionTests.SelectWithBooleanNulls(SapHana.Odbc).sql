BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"t2"."a",
	"t2"."b"
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"Child" "t1"
				)
					THEN 1
				ELSE 0
			END as "a",
			CASE
				WHEN "x"."ParentID" <> 0 THEN 1
				ELSE 0
			END as "b"
		FROM
			"Parent" "x"
	) "t2"
UNION ALL
SELECT
	"t4"."a",
	"t4"."b"
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"Child" "t3"
				)
					THEN 1
				ELSE 0
			END as "a",
			NULL as "b"
		FROM
			"Parent" "x_1"
	) "t4"

