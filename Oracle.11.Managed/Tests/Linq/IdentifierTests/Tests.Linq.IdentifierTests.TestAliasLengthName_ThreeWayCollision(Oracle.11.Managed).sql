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

