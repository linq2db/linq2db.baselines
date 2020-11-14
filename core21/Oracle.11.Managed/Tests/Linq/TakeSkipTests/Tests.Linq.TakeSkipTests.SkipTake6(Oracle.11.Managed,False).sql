BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1,
	(
		SELECT
			p."ParentID"
		FROM
			"GrandChild" p
		WHERE
			ROWNUM <= 3
	) t1
WHERE
	c_1."ParentID" = t1."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1,
	(
		SELECT
			t2."ParentID"
		FROM
			(
				SELECT
					t1."ParentID",
					ROWNUM as RN
				FROM
					"GrandChild" t1
				WHERE
					ROWNUM <= 15
			) t2
		WHERE
			t2.RN > 12
	) t3
WHERE
	c_1."ParentID" = t3."ParentID"

