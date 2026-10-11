-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	i."Value",
	i."Id"
FROM
	"Item" i
ORDER BY
	i."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	k_1."item",
	d_1."Log"
FROM
	(
		SELECT 1 AS "item" FROM sys.dual
		UNION ALL
		SELECT 2 FROM sys.dual) k_1
		CROSS APPLY (
			SELECT
				d."Log"
			FROM
				"ItemLog" d
			WHERE
				k_1."item" = d."ItemId"
			ORDER BY
				d."Id"
			FETCH NEXT 2 ROWS ONLY
		) d_1

