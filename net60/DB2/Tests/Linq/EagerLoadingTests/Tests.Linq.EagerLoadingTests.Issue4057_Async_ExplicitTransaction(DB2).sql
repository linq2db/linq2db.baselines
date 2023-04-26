BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"lw_Parent"."ParentID",
	"detail"."ParentID",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			(
				SELECT
					"x"."ParentID"
				FROM
					"Parent" "x"
				WHERE
					"x"."ParentID" = 3
				FETCH FIRST 1 ROWS ONLY
			) "t1"
	) "lw_Parent"
		INNER JOIN "Child" "detail" ON "lw_Parent"."ParentID" = "detail"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH FIRST 1 ROWS ONLY

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"lw_Parent"."ParentID",
	"detail"."ParentID",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			(
				SELECT
					"x"."ParentID"
				FROM
					"Parent" "x"
				WHERE
					"x"."ParentID" = 3
				FETCH FIRST 1 ROWS ONLY
			) "t1"
	) "lw_Parent"
		INNER JOIN "Child" "detail" ON "lw_Parent"."ParentID" = "detail"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH FIRST 1 ROWS ONLY

BeforeExecute
DisposeTransaction
BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"lw_Parent"."ParentID",
	"detail"."ParentID",
	"detail"."ChildID"
FROM
	(
		SELECT DISTINCT
			"t1"."ParentID"
		FROM
			(
				SELECT
					"x"."ParentID"
				FROM
					"Parent" "x"
				WHERE
					"x"."ParentID" = 3
				FETCH FIRST 1 ROWS ONLY
			) "t1"
	) "lw_Parent"
		INNER JOIN "Child" "detail" ON "lw_Parent"."ParentID" = "detail"."ParentID"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

SELECT
	"x"."ParentID",
	"x"."Value1"
FROM
	"Parent" "x"
WHERE
	"x"."ParentID" = 3
FETCH FIRST 1 ROWS ONLY

BeforeExecute
DisposeTransaction
