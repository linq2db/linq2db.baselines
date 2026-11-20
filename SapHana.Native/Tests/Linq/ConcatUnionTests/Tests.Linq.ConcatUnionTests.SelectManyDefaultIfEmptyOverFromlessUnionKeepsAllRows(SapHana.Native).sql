-- SapHana.Native SapHana
SELECT
	"p"."ParentID",
	"x"."X"
FROM
	"Parent" "p"
		LEFT JOIN (
			SELECT
				CAST(1 AS Integer) as "X"
			FROM DUMMY
			UNION ALL
			SELECT
				CAST(2 AS Integer) as "X"
			FROM DUMMY
		) "x" ON 1=1

