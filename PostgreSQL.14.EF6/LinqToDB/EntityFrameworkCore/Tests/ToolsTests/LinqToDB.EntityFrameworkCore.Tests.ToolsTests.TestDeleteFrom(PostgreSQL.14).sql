--  PostgreSQL.9.3 PostgreSQL (asynchronously)
DECLARE @take Integer -- Int32
SET     @take = 20

DELETE FROM
	(
		SELECT
			e."CustomerID" as "CustomerId"
		FROM
			"Customers" e
		WHERE
			e."IsDeleted"
		LIMIT :take
	) x
WHERE
	1 = 0



