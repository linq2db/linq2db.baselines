BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

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
				CROSS JOIN LATERAL (
					SELECT
						*
					FROM
						"Child" "ch"
					WHERE
						"p"."ParentID" = "ch"."ParentID"
					ORDER BY
						"ch"."ChildID" DESC
					FETCH NEXT 1 ROWS ONLY
				) "t1"
		WHERE
			"p"."ParentID" = 1
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"p"."ParentID",
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Parent" "p"
		CROSS JOIN LATERAL (
			SELECT
				"ch"."ParentID",
				"ch"."ChildID"
			FROM
				"Child" "ch"
			WHERE
				"p"."ParentID" = "ch"."ParentID"
			ORDER BY
				"ch"."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) "t1"
WHERE
	"p"."ParentID" = 1

