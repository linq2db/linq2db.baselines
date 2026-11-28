-- Oracle.11.Managed Oracle11
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	longLongLongLongVeryLongVe_2."ParentID",
	longLongLongLongVeryLongVe_2."Value1"
FROM
	"Parent" longLongLongLongVeryLongVe_2
		INNER JOIN "Child" longLongLongLongVeryLongVe ON longLongLongLongVeryLongVe."ParentID" = longLongLongLongVeryLongVe_2."ParentID"
		INNER JOIN "GrandChild" longLongLongLongVeryLongVe_1 ON longLongLongLongVeryLongVe_1."ChildID" = longLongLongLongVeryLongVe."ChildID"
WHERE
	longLongLongLongVeryLongVe_2."ParentID" = :parentId

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."ChildID",
	t1."GrandChildID"
FROM
	"GrandChild" t1

