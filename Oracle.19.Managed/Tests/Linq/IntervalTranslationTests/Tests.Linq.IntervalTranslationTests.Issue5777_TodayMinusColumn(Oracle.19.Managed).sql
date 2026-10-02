-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 0D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 36000000000D > 0D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 600000000D > 0D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(Trunc((CAST(Floor(Extract(Day From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn")) * 10000000D)) AS Number(19))) / 864000000000) AS Int) > 0

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOnNullable"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOnNullable"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOnNullable"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOnNullable")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 0D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
ORDER BY
	CAST(CAST(Floor(Extract(Day From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(Extract(Day From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (TIMESTAMP '2026-10-01 00:00:00.000000' - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D
FROM
	"Issue5777Row" r
ORDER BY
	r."Id"

