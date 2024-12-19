BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			(
				SELECT
					"p"."ParentID"
				FROM
					"Parent" "p"
				WHERE
					"p"."ParentID" = 1
				FETCH NEXT 2 ROWS ONLY
			) "t1"
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"p"."ParentID",
	"p"."Value1"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = 1
FETCH NEXT 2 ROWS ONLY

