-- Oracle.11.Managed Oracle11
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

