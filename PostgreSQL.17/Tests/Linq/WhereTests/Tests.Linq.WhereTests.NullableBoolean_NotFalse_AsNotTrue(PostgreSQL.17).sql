-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	r."ID",
	r."Bool"
FROM
	"NullableBool" r
WHERE
	r."Bool" = True OR r."Bool" IS NULL

