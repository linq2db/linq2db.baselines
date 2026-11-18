-- PostgreSQL.9.3 PostgreSQL
SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

