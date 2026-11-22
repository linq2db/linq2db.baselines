-- PostgreSQL.18 PostgreSQL12
DECLARE @date Timestamp -- DateTime2
SET     @date = '2020-02-29 17:54:55.123'::timestamp

SELECT
	e."Id",
	e."Name",
	e."Duration"
FROM
	"Events" e
WHERE
	((e."Duration" + e."Duration") * e."Duration" @> :date)



-- PostgreSQL.18 PostgreSQL12
DECLARE @date Timestamp -- DateTime2
SET     @date = '2020-02-29 17:54:55.123'::timestamp

SELECT
	e."Id",
	e."Name",
	e."Duration"
FROM
	"Events" e
WHERE
	(e."Duration" - (e."Duration" + e."Duration") @> :date)



