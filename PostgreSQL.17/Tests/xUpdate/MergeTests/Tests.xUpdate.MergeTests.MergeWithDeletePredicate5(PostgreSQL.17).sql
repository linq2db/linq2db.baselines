﻿BeforeExecute
BeginTransaction
BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

MERGE INTO "Child" "Target"
USING (
	SELECT
		t."ParentID" as "source_ParentID",
		t."ChildID" as "source_ChildID"
	FROM
		"Child" t
			LEFT JOIN "Parent" "a_Parent" ON t."ParentID" = "a_Parent"."ParentID"
	WHERE
		"a_Parent"."ParentID" = 2 AND EXISTS(
			SELECT
				*
			FROM
				"GrandChild" g_1
					LEFT JOIN "Child" "a_Child" ON g_1."ParentID" = "a_Child"."ParentID" AND g_1."ChildID" = "a_Child"."ChildID"
			WHERE
				t."ParentID" = g_1."ParentID" AND t."ChildID" = g_1."ChildID" AND
				"a_Child"."ChildID" = 22
		)
) "Source"
(
	"source_ParentID",
	"source_ChildID"
)
ON ("Target"."ParentID" = "Source"."source_ParentID" AND
"Target"."ChildID" = "Source"."source_ChildID")

WHEN NOT MATCHED THEN
INSERT
(
	"ParentID",
	"ChildID"
)
VALUES
(
	"Source"."source_ParentID",
	"Source"."source_ChildID"
)

WHEN NOT MATCHED BY SOURCE AND (
	SELECT
		"a_Parent_1"."ParentID"
	FROM
		"Parent" "a_Parent_1"
	WHERE
		"Target"."ParentID" = "a_Parent_1"."ParentID"
) = 2 AND
EXISTS(
	SELECT
		*
	FROM
		"GrandChild" g_2
			LEFT JOIN "Child" "a_Child_1" ON g_2."ParentID" = "a_Child_1"."ParentID" AND g_2."ChildID" = "a_Child_1"."ChildID"
	WHERE
		"Target"."ParentID" = g_2."ParentID" AND "Target"."ChildID" = g_2."ChildID" AND
		"a_Child_1"."ChildID" = 22
) THEN DELETE

BeforeExecute
DisposeTransaction
