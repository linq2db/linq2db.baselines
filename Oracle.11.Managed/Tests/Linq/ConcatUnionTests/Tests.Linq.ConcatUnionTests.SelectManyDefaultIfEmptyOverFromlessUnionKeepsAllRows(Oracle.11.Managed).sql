-- Oracle.11.Managed Oracle11
SELECT
	p."ParentID",
	x.X
FROM
	"Parent" p
		LEFT JOIN (
			SELECT
				CAST(1 AS Int) as X
			FROM SYS.DUAL
			UNION ALL
			SELECT
				CAST(2 AS Int) as X
			FROM SYS.DUAL
		) x ON 1=1

