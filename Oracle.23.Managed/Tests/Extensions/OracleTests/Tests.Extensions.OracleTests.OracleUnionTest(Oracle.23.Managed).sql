-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ CONTAINERS(DEFAULT_PDB_HINT='NO_PARALLEL') */
	NULL,
	t1."ParentID",
	t1."ParentID",
	t1."Value1",
	t1."c1",
	t1."ParentID_1",
	t1."Value1_1",
	NULL
FROM
	(
		SELECT
			p."ParentID",
			p."Value1",
			NULL as "c1",
			NULL as "ParentID_1",
			NULL as "Value1_1"
		FROM
			"Parent" p
		UNION
		SELECT
			NULL as "ParentID",
			NULL as "Value1",
			a_Parent."ParentID" as "c1",
			a_Parent."ParentID" as "ParentID_1",
			a_Parent."Value1" as "Value1_1"
		FROM
			"Child" p_1
				LEFT JOIN "Parent" a_Parent ON p_1."ParentID" = a_Parent."ParentID"
	) t1
UNION
SELECT
	t2."ParentID",
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	NULL,
	t2."Value1"
FROM
	"Parent" t2
		CROSS JOIN (
			SELECT
				*
			FROM
				"Child" c_1
		) c_2

