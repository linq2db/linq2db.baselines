-- PostgreSQL.15 PostgreSQL13

SELECT
	unnest(t."StringArray")
FROM
	"TableWithArray" t

