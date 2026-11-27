-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	i."Value",
	i."Id"
FROM
	"EagerOrderItem" i
ORDER BY
	i."Id"

-- Oracle.23.Managed Oracle.Managed Oracle12
SELECT
	k_1."item",
	a_Tags."Id",
	a_Tags."LogId",
	a_Tags."Name"
FROM
	(
		SELECT 1 AS "item" FROM sys.dual
		UNION ALL
		SELECT 2 FROM sys.dual) k_1
		INNER JOIN "EagerOrderItemLog" d ON k_1."item" = d."ItemId"
		INNER JOIN "EagerOrderItemTag" a_Tags ON d."Id" = a_Tags."LogId"
ORDER BY
	d."Id" DESC

