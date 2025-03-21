﻿Parameters:
@__date_0='?' (DbType = DateTime2)

SELECT e."Id", e."Duration", e."Name"
FROM "Events" AS e
WHERE (((e."Duration" @> @__date_0 OR (lower(e."Duration") = @__date_0)) OR (upper(e."Duration") = @__date_0)) OR isempty(e."Duration")) OR isempty(e."Duration" * e."Duration")


-- SQLite.MS PostgreSQL.9.5 PostgreSQL
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



