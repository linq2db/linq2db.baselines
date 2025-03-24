﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	m_1.cond,
	m_1."ParentID",
	d_1."ParentID",
	d_1."ChildID"
FROM
	(
		SELECT DISTINCT
			"a_Parent"."ParentID" as cond,
			t2."ParentID"
		FROM
			(
				SELECT DISTINCT
					t1."ParentID"
				FROM
					(
						SELECT
							p."ParentID"
						FROM
							"Parent" p
						WHERE
							p."ParentID" < 2
						LIMIT 1
					) t1
			) t2
				INNER JOIN "Child" d ON t2."ParentID" = d."ParentID"
				LEFT JOIN "Parent" "a_Parent" ON d."ParentID" = "a_Parent"."ParentID"
	) m_1
		INNER JOIN "Child" d_1 ON m_1.cond = d_1."ParentID"

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	m_1."ParentID",
	d."ParentID",
	d."ChildID",
	"a_Parent"."ParentID",
	"a_Parent"."Value1"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" < 2
		LIMIT 1
	) m_1
		INNER JOIN "Child" d ON m_1."ParentID" = d."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON d."ParentID" = "a_Parent"."ParentID"

BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" < 2
LIMIT 1

