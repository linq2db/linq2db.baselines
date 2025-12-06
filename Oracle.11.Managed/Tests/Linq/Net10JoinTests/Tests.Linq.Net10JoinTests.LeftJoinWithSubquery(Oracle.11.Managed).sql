-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 10

SELECT
	p_1."ParentID",
	c_1."ChildID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" > 0 AND ROWNUM <= :take
	) p_1
		LEFT JOIN "Child" c_1 ON p_1."ParentID" = c_1."ParentID"

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	"Child" t1

