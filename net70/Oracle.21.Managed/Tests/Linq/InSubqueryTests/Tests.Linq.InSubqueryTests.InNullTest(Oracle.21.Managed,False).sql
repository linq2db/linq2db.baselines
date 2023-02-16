BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	c_1."Value1"
FROM
	"Parent" c_1
WHERE
	NULL IN (
		SELECT
			p."Value1"
		FROM
			"Parent" p
	)

