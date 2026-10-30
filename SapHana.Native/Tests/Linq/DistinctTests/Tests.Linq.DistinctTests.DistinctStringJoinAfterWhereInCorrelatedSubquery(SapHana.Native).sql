-- SapHana.Native SapHana
SELECT
	"p"."ParentID",
	Coalesce((
		SELECT
			STRING_AGG("t1"."Ids", ',')
		FROM
			(
				SELECT DISTINCT
					CAST("x"."ChildID" AS NVarChar(11)) as "Ids"
				FROM
					"Child" "x"
				WHERE
					"x"."ParentID" = "p"."ParentID" AND CAST("x"."ChildID" AS NVarChar(11)) <> '11'
			) "t1"
	), '')
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

