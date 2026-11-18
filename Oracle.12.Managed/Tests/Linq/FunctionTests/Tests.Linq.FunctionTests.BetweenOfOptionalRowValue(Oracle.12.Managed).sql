-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	c_1."ChildID",
	CASE
		WHEN Coalesce(c_1."ChildID", 0) BETWEEN 0 AND 100 THEN 1
		ELSE 0
	END as "InRange",
	CASE
		WHEN Coalesce(c_1."ChildID", 0) NOT BETWEEN 0 AND 100 THEN 1
		ELSE 0
	END as "OutOfRange",
	CASE
		WHEN c_1."ChildID" BETWEEN 0 AND 100 THEN 1
		ELSE 0
	END as "NullableInRange"
FROM
	"Parent" p
		LEFT JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
WHERE
	p."ParentID" = 5
FETCH NEXT 2 ROWS ONLY

