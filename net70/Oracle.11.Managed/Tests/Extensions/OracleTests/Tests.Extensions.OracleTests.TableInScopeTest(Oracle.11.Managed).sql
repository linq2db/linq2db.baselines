BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT /*+ NOCACHE(p_2.p_1.t1.p) NOCACHE(p_2.p_1.t1.c_1) FULL(p_2.p_1.c1) NOCACHE(p_2.p_1.c1) PARALLEL(p_2.p1) CLUSTER(p_2.c_2) CLUSTER(p_2.a_Parent) */
	p_2."ParentID",
	p_2."Value1"
FROM
	(
		SELECT
			p_1."ParentID",
			p_1."Value1"
		FROM
			(
				SELECT
					t1."ParentID_1" as "ParentID",
					t1."Value1"
				FROM
					(
						SELECT
							c_1."ParentID",
							p."ParentID" as "ParentID_1",
							p."Value1"
						FROM
							"Parent" p,
							"Child" c_1
					) t1,
					"Child" c1
				WHERE
					t1."ParentID" = t1."ParentID_1" AND c1."ParentID" = t1."ParentID_1"
			) p_1
				CROSS JOIN "Parent" p1
				CROSS JOIN "Child" c_2
				LEFT JOIN "Parent" a_Parent ON c_2."ParentID" = a_Parent."ParentID"
		WHERE
			c_2."ParentID" = p_1."ParentID" AND a_Parent."ParentID" > 0 AND
			p1."ParentID" = p_1."ParentID"
	) p_2,
	"Child" c_3
WHERE
	c_3."ParentID" = p_2."ParentID"

