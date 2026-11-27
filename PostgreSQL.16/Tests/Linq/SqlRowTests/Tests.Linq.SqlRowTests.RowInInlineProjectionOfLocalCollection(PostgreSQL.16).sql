-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	x."Id",
	x."Country",
	x."State"
FROM
	"CountryStateTable" x
WHERE
	(x."Country", x."State") IN (
		SELECT
			t1."Item1",
			t1."Item2"
		FROM
			(VALUES
				('US','CA'), ('US','NY')
			) t1("Item1", "Item2")
	)

