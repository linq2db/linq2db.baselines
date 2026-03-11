-- Oracle.11.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	c_1."ParentID" IN (
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
							"Parent" p
					) t1
			) t2
		WHERE
			t2.RN > 100
	)

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

