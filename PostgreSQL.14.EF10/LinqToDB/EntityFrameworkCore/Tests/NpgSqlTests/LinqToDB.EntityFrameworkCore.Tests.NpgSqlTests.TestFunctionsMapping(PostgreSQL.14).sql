Parameters:
@date='?' (DbType = DateTime2)

SELECT e."Id", e."Duration", e."Name"
FROM "Events" AS e
WHERE e."Duration" @> @date OR lower(e."Duration") = @date OR upper(e."Duration") = @date OR isempty(e."Duration") OR isempty(e."Duration" * e."Duration")


-- PostgreSQL.9.5 PostgreSQL
DECLARE @date Timestamp -- DateTime2
SET     @date = '2020-02-29 17:54:55.123'::timestamp

SELECT
	e."Id",
	e."Name",
	e."Duration"
FROM
	"Events" e
WHERE
	e."Duration" @> :date OR
	lower(e."Duration") = :date OR
	upper(e."Duration") = :date OR
	isempty(e."Duration") OR
	isempty(e."Duration" * e."Duration")



