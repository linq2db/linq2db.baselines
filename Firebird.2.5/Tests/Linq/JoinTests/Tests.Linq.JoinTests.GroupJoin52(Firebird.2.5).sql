BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			"Parent" "t1"
		WHERE
			"t1"."ParentID" = 1
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."ParentID"
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = 1

