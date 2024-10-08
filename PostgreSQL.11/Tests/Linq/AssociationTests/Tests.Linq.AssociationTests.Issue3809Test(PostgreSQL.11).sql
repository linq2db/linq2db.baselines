﻿BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	m_1."ParentTest",
	d."ParentID",
	d."ChildID"
FROM
	(
		SELECT DISTINCT
			"a_ParentTest"."ParentID" as "ParentTest"
		FROM
			"Parent" a
				LEFT JOIN "Parent" "a_ParentTest" ON a."ParentID" = "a_ParentTest"."ParentID" AND (a."Value1" = "a_ParentTest"."Value1" OR a."Value1" IS NULL AND "a_ParentTest"."Value1" IS NULL)
		WHERE
			"a_ParentTest"."ParentID" IS NULL OR EXISTS(
				SELECT
					*
				FROM
					"Child" a_1
				WHERE
					"a_ParentTest"."ParentID" = a_1."ParentID" AND a_1."ChildID" = 11
			)
	) m_1
		INNER JOIN "Child" d ON m_1."ParentTest" = d."ParentID"
ORDER BY
	d."ChildID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	a."ParentID",
	"a_ParentTest"."ParentID",
	"a_ParentTest"."Value1"
FROM
	"Parent" a
		LEFT JOIN "Parent" "a_ParentTest" ON a."ParentID" = "a_ParentTest"."ParentID" AND (a."Value1" = "a_ParentTest"."Value1" OR a."Value1" IS NULL AND "a_ParentTest"."Value1" IS NULL)
WHERE
	"a_ParentTest"."ParentID" IS NULL OR EXISTS(
		SELECT
			*
		FROM
			"Child" a_1
		WHERE
			"a_ParentTest"."ParentID" = a_1."ParentID" AND a_1."ChildID" = 11
	)

