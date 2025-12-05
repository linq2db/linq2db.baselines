-- SapHana.Odbc SapHanaOdbc

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"p"."ParentID"
		FROM
			"Parent" "p"
				INNER JOIN LATERAL (
					SELECT
						*
					FROM
						"Child" "ch"
					WHERE
						"p"."ParentID" = "ch"."ParentID"
					ORDER BY
						"ch"."ChildID" DESC
					LIMIT 1
				) "t1" ON 1=1
		WHERE
			"p"."ParentID" = 1
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

-- SapHana.Odbc SapHanaOdbc

SELECT
	"p"."ParentID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		INNER JOIN LATERAL (
			SELECT
				"ch"."ParentID",
				"ch"."ChildID"
			FROM
				"Child" "ch"
			WHERE
				"p"."ParentID" = "ch"."ParentID"
			ORDER BY
				"ch"."ChildID" DESC
			LIMIT 1
		) "t1" ON 1=1
WHERE
	"p"."ParentID" = 1

