BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT /*+ NOCACHE(p) NOCACHE(c_1) FULL(c1) NOCACHE(c1) CLUSTER(c_2) CLUSTER(a_Parent) PARALLEL(p1) */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
		CROSS JOIN "Child" c_1
		CROSS JOIN "Child" c1
		CROSS JOIN "Child" c_2
		LEFT JOIN "Parent" a_Parent ON c_2."ParentID" = a_Parent."ParentID"
		CROSS JOIN "Parent" p1
		CROSS JOIN "Child" c_3
WHERE
	c_1."ParentID" = p."ParentID" AND
	c1."ParentID" = p."ParentID" AND
	c_2."ParentID" = p."ParentID" AND
	a_Parent."ParentID" > 0 AND
	p1."ParentID" = p."ParentID" AND
	c_3."ParentID" = p."ParentID"

