-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID",
	p."Value1",
	ROW_NUMBER() OVER (PARTITION BY p."Value1" ORDER BY (
		SELECT
			1
		FROM SYS.DUAL
	))
FROM
	"Parent" p

