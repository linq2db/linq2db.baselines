-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	CAST(CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 0D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	CAST(CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 36000000000D > 0D

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @asOf TimeStamp -- DateTime
SET     @asOf = TIMESTAMP '2026-01-03 13:30:00.000000'

SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	CAST(CAST(Floor(Extract(Day From (:asOf - r."ClosedOnNullable"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (:asOf - r."ClosedOnNullable"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (:asOf - r."ClosedOnNullable"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (:asOf - r."ClosedOnNullable")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 0D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 36000000000D as "c1"
FROM
	"ClosedPeriodRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	CAST(Trunc((CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19))) / 864000000000) AS Int) > 0

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int) > 0

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(Trunc((CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19))) / 864000000000) AS Int),
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int)
FROM
	"ClosedPeriodRow" r
ORDER BY
	r."Id"

