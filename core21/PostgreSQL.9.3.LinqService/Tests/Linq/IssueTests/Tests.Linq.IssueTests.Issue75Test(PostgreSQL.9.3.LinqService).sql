BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	child_1."ChildID",
	child_1."ParentID",
	child_1."CountChildren2",
	child_1.c1,
	child_1.c2,
	child_1."AllChildrenMin"
FROM
	(
		SELECT
			c_1."ParentID",
			c_1."ChildID",
			(
				SELECT
					Count(*)
				FROM
					"Child" c2_1
				WHERE
					c2_1."ParentID" = c_1."ParentID"
			) as "CountChildren2",
			EXISTS(
				SELECT
					*
				FROM
					"Child" c2_2
				WHERE
					c2_2."ParentID" = c_1."ParentID"
			) as c1,
			(NOT EXISTS(
				SELECT
					*
				FROM
					"Child" c2_3
				WHERE
					c2_3."ParentID" <> c_1."ParentID"
			)) as c2,
			(
				SELECT
					Min(c2_4."ChildID")
				FROM
					"Child" c2_4
				WHERE
					c2_4."ParentID" = c_1."ParentID"
			) as "AllChildrenMin"
		FROM
			"Child" c_1
	) child_1
		INNER JOIN "Parent" parent_1 ON child_1."ParentID" = parent_1."ParentID"
WHERE
	parent_1."Value1" < 7

