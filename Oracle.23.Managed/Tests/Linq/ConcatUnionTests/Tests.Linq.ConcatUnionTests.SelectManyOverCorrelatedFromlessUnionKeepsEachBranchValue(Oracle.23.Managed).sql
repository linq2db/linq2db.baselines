-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	p."ParentID",
	x.X
FROM
	"Parent" p
		CROSS APPLY (
			SELECT
				p."Value1" as X
			FROM SYS.DUAL
			UNION ALL
			SELECT
				CAST(7 AS Int) as X
			FROM SYS.DUAL
		) x

