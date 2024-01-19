BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT /*+ CONTAINERS(DEFAULT_PDB_HINT='NO_PARALLEL') */
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
UNION
SELECT
	a_Parent."ParentID",
	a_Parent."Value1"
FROM
	"Child" p_1
		LEFT JOIN "Parent" a_Parent ON p_1."ParentID" = a_Parent."ParentID"
UNION
SELECT
	t2."ParentID",
	t2."Value1"
FROM
	(
		SELECT
			p_2."ParentID",
			p_2."Value1"
		FROM
			"Parent" p_2,
			(
				SELECT
					*
				FROM
					"Child" t1
			) c_1
	) t2

