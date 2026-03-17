-- PostgreSQL.13 PostgreSQL

SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

