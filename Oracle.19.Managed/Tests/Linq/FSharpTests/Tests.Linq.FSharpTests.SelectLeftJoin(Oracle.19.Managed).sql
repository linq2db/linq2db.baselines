-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	Item1."ParentID",
	Item1."ChildID"
FROM
	"Child" Item1
		INNER JOIN "Parent" arg2 ON Item1."ParentID" = arg2."ParentID"
WHERE
	arg2."Value1" = 6
FETCH NEXT 1 ROWS ONLY

