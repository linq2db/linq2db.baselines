-- PostgreSQL.13 PostgreSQL13

DELETE FROM
	"Products" e
WHERE
	(
		SELECT
			COUNT(*)
		FROM
			"Order Details" e_1
		WHERE
			e."ProductID" = e_1."ProductID"
	) > 0 AND
	e."ProductName" LIKE 'a%' ESCAPE '~' AND e."ProductName" = 'a'



