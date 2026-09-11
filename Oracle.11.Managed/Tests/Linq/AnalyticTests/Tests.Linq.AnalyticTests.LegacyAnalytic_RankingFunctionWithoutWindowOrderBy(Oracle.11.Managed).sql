-- Oracle.11.Managed Oracle11
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

