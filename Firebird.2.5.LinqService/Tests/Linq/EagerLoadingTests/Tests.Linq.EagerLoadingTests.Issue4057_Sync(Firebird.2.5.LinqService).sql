BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT FIRST 1
			"x"."ParentID"
		FROM
			"Parent" "x"
		WHERE
			"x"."ParentID" = 3
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3

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
		SELECT FIRST 1
			"x"."ParentID"
		FROM
			"Parent" "x"
		WHERE
			"x"."ParentID" = 3
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3

BeforeExecute
DisposeTransaction
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
		SELECT FIRST 1
			"x"."ParentID"
		FROM
			"Parent" "x"
		WHERE
			"x"."ParentID" = 3
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 1
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3

BeforeExecute
DisposeTransaction
