-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 15:00:00.000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn
)

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 11:00:00.000000'

INSERT INTO "EventRow"
(
	"Id",
	"StartedOn",
	"FinishedOn"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn
)

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	x."Id"
FROM
	"EventRow" x
WHERE
	CAST(CAST(Floor(Extract(Day From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) AS Float) / 36000000000D > 3D

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	x."Id"
FROM
	"EventRow" x
WHERE
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int) = 1

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	x."Id"
FROM
	"EventRow" x
ORDER BY
	CAST(Floor(Extract(Day From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)) DESC

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	CAST(Floor(Extract(Day From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(x."FinishedOn" AS timestamp) - CAST(x."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))
FROM
	"EventRow" x
ORDER BY
	x."Id"

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Id",
	CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))
FROM
	"EventRow" r
ORDER BY
	r."Id"

