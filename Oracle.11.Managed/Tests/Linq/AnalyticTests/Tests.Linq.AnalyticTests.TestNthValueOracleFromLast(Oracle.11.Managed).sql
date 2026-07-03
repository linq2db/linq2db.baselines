-- Oracle.11.Managed Oracle11

SELECT
	NTH_VALUE(c_1."ChildID", CAST(p."ParentID" AS Number(19))) FROM LAST IGNORE NULLS OVER (PARTITION BY p."Value1", c_1."ChildID")
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"

