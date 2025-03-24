﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	CASE
		WHEN t2."ParentID_1" IS NULL THEN 0
		ELSE t2."ParentID_1"
	END,
	(
		SELECT
			t3."ParentID"
		FROM
			(
				SELECT
					c_2."ParentID"
				FROM
					"Child" c_2
				WHERE
					c_2."ChildID" > -100
				ORDER BY
					c_2."ParentID"
			) t3
		WHERE
			ROWNUM <= 1
	),
	(
		SELECT
			t4."ChildID"
		FROM
			(
				SELECT
					c_3."ChildID"
				FROM
					"Child" c_3
				WHERE
					c_3."ChildID" > -100
				ORDER BY
					c_3."ParentID"
			) t4
		WHERE
			ROWNUM <= 1
	)
FROM
	(
		SELECT
			p."ParentID",
			(
				SELECT
					t1."ParentID"
				FROM
					(
						SELECT
							c_1."ParentID"
						FROM
							"Child" c_1
						WHERE
							c_1."ParentID" > 0
						ORDER BY
							c_1."ParentID"
					) t1
				WHERE
					ROWNUM <= 1
			) as "ParentID_1"
		FROM
			"Parent" p
	) t2
ORDER BY
	t2."ParentID"

