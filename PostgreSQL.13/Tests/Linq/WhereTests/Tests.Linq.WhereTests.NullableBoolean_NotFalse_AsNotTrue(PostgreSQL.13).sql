-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	r."ID",
	r."Bool"
FROM
	"NullableBool" r
WHERE
	r."Bool" = True OR r."Bool" IS NULL

