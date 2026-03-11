-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	sq_1."Sum_1"
FROM
	(
		SELECT
			SUM(sq."groupId") OVER(PARTITION BY sq."Value1", sq."ChildID" ORDER BY sq."Value1", sq."ChildID", sq."ParentID") as "Sum_1"
		FROM
			(
				SELECT
					c_1."ParentID",
					c_1."ChildID",
					p."Value1",
					ROW_NUMBER() OVER(PARTITION BY p."Value1", c_1."ChildID" ORDER BY p."Value1" DESC, c_1."ChildID", c_1."ParentID" DESC) as "groupId"
				FROM
					"Parent" p
						INNER JOIN "Child" c_1 ON p."ParentID" = c_1."ParentID"
			) sq
	) sq_1
WHERE
	sq_1."Sum_1" > 0

