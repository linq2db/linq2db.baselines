﻿BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t2."ParentID",
	t2."ChildID"
FROM
	(
		SELECT
			t1."ParentID",
			t1."ChildID"
		FROM
			"Child" t1
		ORDER BY
			t1."ChildID"
	) t2
UNION ALL
SELECT
	t4."ParentID",
	t4."ChildID"
FROM
	(
		SELECT
			t3."ParentID",
			t3."ChildID"
		FROM
			"Child" t3
		ORDER BY
			t3."ChildID" DESC
	) t4

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1
UNION ALL
SELECT
	t3."ParentID",
	t3."ChildID"
FROM
	(
		SELECT
			t2."ParentID",
			t2."ChildID"
		FROM
			"Child" t2
		ORDER BY
			t2."ChildID" DESC
	) t3

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t5."ParentID",
	t5."ChildID"
FROM
	(
		SELECT
			t2."ParentID",
			t2."ChildID"
		FROM
			(
				SELECT
					t1."ParentID",
					t1."ChildID"
				FROM
					"Child" t1
			) t2
		UNION ALL
		SELECT
			t4."ParentID",
			t4."ChildID"
		FROM
			(
				SELECT
					t3."ParentID",
					t3."ChildID"
				FROM
					"Child" t3
			) t4
	) t5
ORDER BY
	t5."ChildID"

