BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN t2.projection__set_id__ = 0 THEN True
		ELSE False
	END,
	t2."ParentID",
	t2."ParentID_1",
	t2."ChildID"
FROM
	(
		SELECT
			t1."ParentID",
			t1."ParentID" as "ParentID_1",
			t1."ChildID",
			0::Int as projection__set_id__
		FROM
			"Parent" p
				LEFT JOIN LATERAL (
					SELECT
						"a_Children"."ParentID",
						"a_Children"."ChildID"
					FROM
						"Child" "a_Children"
					WHERE
						p."ParentID" = "a_Children"."ParentID"
					LIMIT 1
				) t1 ON 1=1
		WHERE
			p."ParentID" = 1
		UNION ALL
		SELECT
			NULL::Int as "ParentID",
			NULL::Int as "ParentID_1",
			NULL::Int as "ChildID",
			1::Int as projection__set_id__
		FROM
			"Parent" p_1
		WHERE
			p_1."ParentID" <> 1
	) t2

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			t1."ParentID"
		FROM
			"Parent" t1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

