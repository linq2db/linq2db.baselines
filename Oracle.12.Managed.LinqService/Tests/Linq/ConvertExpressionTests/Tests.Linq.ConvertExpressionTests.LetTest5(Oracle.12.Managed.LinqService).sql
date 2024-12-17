﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" c_2
			WHERE
				c_2."ParentID" = p."ParentID" AND c_2."ChildID" > -100
		)
			THEN 1
		ELSE 0
	END,
	(
		SELECT
			COUNT(*)
		FROM
			"Child" c_3
		WHERE
			c_3."ParentID" = p."ParentID" AND c_3."ChildID" > -100
	),
	(
		SELECT
			c_4."ParentID"
		FROM
			"Child" c_4
		WHERE
			c_4."ParentID" = p."ParentID" AND c_4."ChildID" > -100 AND
			c_4."ParentID" > 0
		ORDER BY
			c_4."ChildID"
		FETCH NEXT 1 ROWS ONLY
	),
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		OUTER APPLY (
			SELECT
				c_1."ParentID",
				c_1."ChildID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = p."ParentID" AND c_1."ChildID" > -100
			ORDER BY
				c_1."ChildID"
			FETCH NEXT 1 ROWS ONLY
		) t1

