BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."P1_p_ParentID",
	t1."P1_p_Value1",
	t1."P2_p2_ParentID",
	t1."P2_p2_Value1",
	c_1."ParentID",
	c_1."ChildID"
FROM
	(
		SELECT
			p."ParentID" as "P1_p_ParentID",
			p."Value1" as "P1_p_Value1",
			p2."ParentID" as "P2_p2_ParentID",
			p2."Value1" as "P2_p2_Value1"
		FROM
			"Parent" p,
			"Parent" p2
	) t1
		INNER JOIN "Child" c_1 ON t1."P1_p_ParentID" = c_1."ParentID"
UNION
SELECT
	t2."P1_p_ParentID",
	t2."P1_p_Value1",
	t2."P2_p2_ParentID",
	t2."P2_p2_Value1",
	c_2."ParentID",
	c_2."ChildID"
FROM
	(
		SELECT
			p2_1."ParentID" as "P2_p2_ParentID",
			p_1."ParentID" as "P1_p_ParentID",
			p_1."Value1" as "P1_p_Value1",
			p2_1."Value1" as "P2_p2_Value1"
		FROM
			"Parent" p_1,
			"Parent" p2_1
	) t2
		INNER JOIN "Child" c_2 ON t2."P2_p2_ParentID" = c_2."ParentID"

