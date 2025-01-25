BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	c_1."ParentID",
	c_1."Value1"
FROM
	"Parent" c_1
WHERE
	1 IN (
		SELECT
			p."Value1"
		FROM
			"Parent" p
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

