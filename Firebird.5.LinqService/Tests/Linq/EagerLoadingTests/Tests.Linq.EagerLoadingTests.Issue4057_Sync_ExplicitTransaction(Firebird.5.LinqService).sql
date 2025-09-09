BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT
			"x"."ParentID"
		FROM
			"Parent" "x"
		WHERE
			"x"."ParentID" = 3
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT
			"x"."ParentID"
		FROM
			"Parent" "x"
		WHERE
			"x"."ParentID" = 3
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"m_1"."ParentID",
	"d"."ParentID",
	"d"."ChildID"
FROM
	(
		SELECT
			"x"."ParentID"
		FROM
			"Parent" "x"
		WHERE
			"x"."ParentID" = 3
		FETCH NEXT 1 ROWS ONLY
	) "m_1"
		INNER JOIN "Child" "d" ON "m_1"."ParentID" = "d"."ParentID"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransaction
