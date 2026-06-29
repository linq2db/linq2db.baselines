-- PostgreSQL.18 PostgreSQL13

SELECT
	r."ID",
	r."Bool"
FROM
	"NullableBool" r
WHERE
	r."Bool" = True OR r."Bool" IS NULL

