-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID",
	ROW_NUMBER() OVER (ORDER BY (
		SELECT
			1
		FROM SYS.DUAL
	)),
	ROW_NUMBER() OVER (ORDER BY p."ParentID"),
	ROW_NUMBER() OVER (ORDER BY p."ParentID")
FROM
	"Parent" p

