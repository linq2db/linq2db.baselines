-- Informix.DB2 Informix
SELECT
	i."Value",
	i.Id
FROM
	EagerOrderItem i
ORDER BY
	i.Id

-- Informix.DB2 Informix
SELECT
	k_1."item",
	a_Tags.Id,
	a_Tags.LogId,
	a_Tags.Name
FROM
	(
		SELECT 1::Int AS "item" FROM table(set{1})
		UNION ALL
		SELECT 2::Int FROM table(set{1})) k_1
		INNER JOIN EagerOrderItemLog d ON k_1."item" = d.ItemId
		INNER JOIN EagerOrderItemTag a_Tags ON d.Id = a_Tags.LogId
ORDER BY
	d.Id DESC

