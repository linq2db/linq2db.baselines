-- SapHana.Native SapHana
SELECT
	CAST("t"."ParentID" * 1000 / 1000 AS Integer)
FROM
	"Child" "t"
WHERE
	"t"."ParentID" * 1000 > 2000

