BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."Value1"
FROM
	(
		SELECT
			(
				SELECT
					Count(*)
				FROM
					"GrandChild" "keyParam"
						INNER JOIN "Parent" "a_Parent" ON "keyParam"."ParentID" = "a_Parent"."ParentID"
				WHERE
					"a_Parent_1"."ParentID" = "a_Parent"."ParentID" AND
					"keyParam"."ChildID" >= 20
			) as ex,
			"a_Parent_1"."Value1"
		FROM
			"GrandChild" t1
				INNER JOIN "Parent" "a_Parent_1" ON t1."ParentID" = "a_Parent_1"."ParentID"
		GROUP BY
			"a_Parent_1"."ParentID",
			"a_Parent_1"."Value1"
	) g_1
WHERE
	g_1.ex > 2

