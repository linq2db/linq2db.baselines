-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 864000000000D,
	CAST(Trunc((CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 864000000000) AS Int)
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
ORDER BY
	x."Id"

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	x."Id"
FROM
	"OuterJoinLeft" x
		LEFT JOIN "OuterJoinRight" b ON b."Id" = x."Id"
WHERE
	CAST(CAST(Floor(Extract(Day From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(b."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 1D

