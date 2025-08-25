BeforeExecute
-- ClickHouse.Driver ClickHouse (asynchronously)

SELECT
	r.OwnerId,
	a_Owner.Id
FROM
	Issue2981Entity r
		LEFT JOIN Issue2981OwnerEntity a_Owner ON r.OwnerId = a_Owner.Id
ORDER BY
	r.OwnerId

