-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	p_1."ParentID",
	t1."ChildID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" < 3
	) p_1
		FULL JOIN (
			SELECT
				c_1."ChildID",
				c_1."ParentID"
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" > 1
		) t1 ON p_1."ParentID" = t1."ParentID"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

