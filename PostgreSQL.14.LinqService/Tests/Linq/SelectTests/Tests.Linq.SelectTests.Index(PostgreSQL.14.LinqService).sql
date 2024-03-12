﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast("a_Parent"."ParentID" as text),
	m_1."ChildID"
FROM
	"Child" m_1
		LEFT JOIN "Parent" "a_Parent" ON m_1."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" IS NOT NULL AND m_1."ParentID" > 0
ORDER BY
	m_1."ChildID" DESC

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast("a_Parent"."ParentID" as text),
	m_1."ChildID"
FROM
	"Child" m_1
		LEFT JOIN "Parent" "a_Parent" ON m_1."ParentID" = "a_Parent"."ParentID"
WHERE
	"a_Parent"."ParentID" IS NOT NULL AND m_1."ParentID" > 0
ORDER BY
	m_1."ChildID" DESC

