-- Oracle.11.Managed Oracle11
DECLARE @parentId Int32
SET     @parentId = 1

SELECT
	longLongLongLongVeryLongVe_1."ParentID",
	longLongLongLongVeryLongVe_1."Value1"
FROM
	"Parent" longLongLongLongVeryLongVe_1
		INNER JOIN "Child" longLongLongLongVeryLongVe ON longLongLongLongVeryLongVe."ParentID" = longLongLongLongVeryLongVe_1."ParentID"
WHERE
	longLongLongLongVeryLongVe_1."ParentID" = :parentId

