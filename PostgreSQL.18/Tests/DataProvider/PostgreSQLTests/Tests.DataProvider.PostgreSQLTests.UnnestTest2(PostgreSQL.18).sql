-- PostgreSQL.18 PostgreSQL12
SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

