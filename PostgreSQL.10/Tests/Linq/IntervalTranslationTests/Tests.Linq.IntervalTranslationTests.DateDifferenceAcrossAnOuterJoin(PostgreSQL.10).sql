-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	Extract(epoch From (b."FinishedOn" - x."StartedOn")) / 86400,
	Trunc(Extract(day From (b."FinishedOn" - x."StartedOn")))::Int,
	Trunc(Extract(hour From (b."FinishedOn" - x."StartedOn")))::Int,
	Trunc(Extract(minute From (b."FinishedOn" - x."StartedOn")))::Int,
	Extract(epoch From (x."StartedOn" - b."FinishedOn")) / 3600,
	Trunc(Extract(hour From (x."StartedOn" - b."FinishedOn")))::Int
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Extract(epoch From (b."FinishedOn" - x."StartedOn")) / 86400 > 1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Trunc(Extract(hour From (b."FinishedOn" - x."StartedOn")))::Int = :Hours

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Minutes Integer -- Int32
SET     @Minutes = 15

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Trunc(Extract(minute From (b."FinishedOn" - x."StartedOn")))::Int = :Minutes

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Extract(epoch From (x."StartedOn" - b."FinishedOn")) / 3600 < -1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Trunc(Extract(hour From (x."StartedOn" - b."FinishedOn")))::Int = -:Hours

