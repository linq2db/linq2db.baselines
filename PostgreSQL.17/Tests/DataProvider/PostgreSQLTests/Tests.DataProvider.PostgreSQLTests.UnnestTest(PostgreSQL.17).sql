-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

