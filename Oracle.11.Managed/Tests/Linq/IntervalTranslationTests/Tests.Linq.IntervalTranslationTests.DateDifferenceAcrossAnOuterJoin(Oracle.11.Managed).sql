-- Oracle.11.Managed Oracle11
SELECT
	CAST(CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 864000000000D
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- Oracle.11.Managed Oracle11
SELECT
	CAST(Trunc((CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 864000000000) AS Int)
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- Oracle.11.Managed Oracle11
SELECT
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int)
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- Oracle.11.Managed Oracle11
SELECT
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 600000000), 60) AS Int)
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- Oracle.11.Managed Oracle11
SELECT
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int)
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- Oracle.11.Managed Oracle11
SELECT
	CAST(CAST(Floor(Extract(Day From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 36000000000D
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- Oracle.11.Managed Oracle11
SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	CAST(CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 1D

-- Oracle.11.Managed Oracle11
DECLARE @Hours Int32
SET     @Hours = 3

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int) = :Hours

-- Oracle.11.Managed Oracle11
DECLARE @Minutes Int32
SET     @Minutes = 15

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 600000000), 60) AS Int) = :Minutes

-- Oracle.11.Managed Oracle11
SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	CAST(CAST(Floor(Extract(Day From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 36000000000D < -1D

-- Oracle.11.Managed Oracle11
DECLARE @Hours Int32
SET     @Hours = 3

SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(x."StartedOn" AS timestamp) - CAST(b."FinishedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int) = -:Hours

