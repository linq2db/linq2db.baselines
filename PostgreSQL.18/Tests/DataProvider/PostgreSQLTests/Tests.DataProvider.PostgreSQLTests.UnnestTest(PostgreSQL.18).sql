-- PostgreSQL.18 PostgreSQL

SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

