-- Firebird.3 Firebird3
SELECT
	"p"."ParentID",
	Coalesce((
		SELECT
			LIST("t1"."Ids", ',')
		FROM
			(
				SELECT DISTINCT
					"x"."ChildID" as "Ids"
				FROM
					"Child" "x"
				WHERE
					"x"."ParentID" = "p"."ParentID" AND "x"."ChildID" <> '11'
			) "t1"
	), '')
FROM
	"Parent" "p"
ORDER BY
	"p"."ParentID"

