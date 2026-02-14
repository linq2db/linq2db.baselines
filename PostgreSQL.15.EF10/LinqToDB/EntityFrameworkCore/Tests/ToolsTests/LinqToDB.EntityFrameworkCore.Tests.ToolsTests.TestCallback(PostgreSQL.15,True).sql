-- PostgreSQL.15 PostgreSQL

DELETE FROM
	"Products" e
WHERE
	NOT e."IsDeleted" AND
	(
		SELECT
			COUNT(*) as "Count_1"
		FROM
			"Order Details" e_1
		WHERE
			NOT e_1."IsDeleted" AND e."ProductID" = e_1."ProductID"
	) > 0 AND
	e."ProductName" LIKE 'a%' ESCAPE '~' AND
	e."ProductName" = 'a'



