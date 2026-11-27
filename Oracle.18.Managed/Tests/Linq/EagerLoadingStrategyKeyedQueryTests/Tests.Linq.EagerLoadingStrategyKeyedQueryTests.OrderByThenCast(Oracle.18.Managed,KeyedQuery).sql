-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	i."Value",
	i."Id"
FROM
	"EagerOrderItem" i
ORDER BY
	i."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	k_1."item",
	d."Id",
	d."ItemId",
	d."Log"
FROM
	(
		SELECT 1 AS "item" FROM sys.dual
		UNION ALL
		SELECT 2 FROM sys.dual) k_1
		INNER JOIN "EagerOrderItemLog" d ON k_1."item" = d."ItemId"
ORDER BY
	d."Id" DESC

