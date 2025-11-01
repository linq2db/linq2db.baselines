-- Oracle.11.Managed Oracle11

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
	) p_1
WHERE
	c_1."ParentID" = p_1."ParentID"

-- Oracle.11.Managed Oracle11

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
					(
						SELECT
							p."ParentID"
						FROM
							"GrandChild" p
					) t1
				WHERE
					ROWNUM <= 15
			) t2
		WHERE
			t2.RN > 12
	) p_1
WHERE
	c_1."ParentID" = p_1."ParentID"

