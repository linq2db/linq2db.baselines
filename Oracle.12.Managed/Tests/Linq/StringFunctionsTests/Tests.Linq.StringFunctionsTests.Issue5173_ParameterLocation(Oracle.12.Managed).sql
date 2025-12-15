-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	LISTAGG('test:' || CAST(grp_1."ch" AS VarChar(11)), ';') WITHIN GROUP (ORDER BY 'test:' || CAST(grp_1."ch" AS VarChar(11)))
FROM
	(
		SELECT
			MOD(ch."item", 10) as "Key_1",
			ch."item" as "ch"
		FROM
			"Parent" grp
				CROSS JOIN (
					SELECT 11 AS "item" FROM sys.dual
					UNION ALL
					SELECT 13 FROM sys.dual) ch
		ORDER BY
			grp."ParentID"
	) grp_1
GROUP BY
	grp_1."Key_1"

