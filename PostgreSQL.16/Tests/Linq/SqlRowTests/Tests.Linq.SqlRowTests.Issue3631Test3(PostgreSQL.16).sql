BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	x."Country",
	x."State"
FROM
	"Issue3631Table" x
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

