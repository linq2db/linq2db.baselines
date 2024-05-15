BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."ParentID"
FROM
	"Parent" "t1"
FETCH NEXT 1 ROWS ONLY

