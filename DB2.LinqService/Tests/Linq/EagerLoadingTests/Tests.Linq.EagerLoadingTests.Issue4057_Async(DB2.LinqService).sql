BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

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
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
BeginTransactionAsync(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

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
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransactionAsync
BeforeExecute
BeginTransactionAsync(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

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
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH NEXT 1 ROWS ONLY

BeforeExecute
DisposeTransactionAsync
