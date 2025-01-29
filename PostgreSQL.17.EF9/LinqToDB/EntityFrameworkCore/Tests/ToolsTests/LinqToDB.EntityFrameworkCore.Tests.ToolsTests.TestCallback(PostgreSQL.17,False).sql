--  PostgreSQL.15 PostgreSQL

DELETE FROM
	"Products" e
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"Order Details" "a_OrderDetails"
		WHERE
			e."ProductID" = "a_OrderDetails"."ProductID"
	) > 0 AND
	e."ProductName" LIKE 'a%' ESCAPE '~' AND e."ProductName" = 'a'



