BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	Item1."ParentID",
	Item1."ChildID"
FROM
	"Child" Item1
		LEFT JOIN "Parent" arg2 ON Item1."ParentID" = arg2."ParentID"
WHERE
	arg2."Value1" = 6 AND arg2."Value1" IS NOT NULL
FETCH NEXT 1 ROWS ONLY

