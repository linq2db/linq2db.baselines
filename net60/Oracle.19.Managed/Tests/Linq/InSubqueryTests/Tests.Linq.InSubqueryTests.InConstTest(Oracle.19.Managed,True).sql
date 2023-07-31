BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	c_1."Value1"
FROM
	"Parent" c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."Value1" = 1
	)

