-- PostgreSQL.13 PostgreSQL12
SELECT
	Extract(epoch From (b."FinishedOn" - x."StartedOn")) / 86400
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	Trunc(Extract(day From (b."FinishedOn" - x."StartedOn")))::Int
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	Trunc(Extract(hour From (b."FinishedOn" - x."StartedOn")))::Int
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	Trunc(Extract(minute From (b."FinishedOn" - x."StartedOn")))::Int
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	Trunc(Extract(hour From (x."StartedOn" - b."FinishedOn")))::Int
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	Extract(epoch From (x."StartedOn" - b."FinishedOn")) / 3600
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- PostgreSQL.13 PostgreSQL12
SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Extract(epoch From (b."FinishedOn" - x."StartedOn")) / 86400 > 1

-- PostgreSQL.13 PostgreSQL12
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Trunc(Extract(hour From (b."FinishedOn" - x."StartedOn")))::Int = :Hours

-- PostgreSQL.13 PostgreSQL12
DECLARE @Minutes Integer -- Int32
SET     @Minutes = 15

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Trunc(Extract(minute From (b."FinishedOn" - x."StartedOn")))::Int = :Minutes

-- PostgreSQL.13 PostgreSQL12
SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Extract(epoch From (x."StartedOn" - b."FinishedOn")) / 3600 < -1

-- PostgreSQL.13 PostgreSQL12
DECLARE @Hours Integer -- Int32
SET     @Hours = 3

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	Trunc(Extract(hour From (x."StartedOn" - b."FinishedOn")))::Int = -:Hours

