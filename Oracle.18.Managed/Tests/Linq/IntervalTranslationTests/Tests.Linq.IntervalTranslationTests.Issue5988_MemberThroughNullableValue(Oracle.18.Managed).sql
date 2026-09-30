-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 0D

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 36000000000D > 0D

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (TIMESTAMP '2026-09-30 00:00:00.000000' - r."ClosedOnNullable"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (TIMESTAMP '2026-09-30 00:00:00.000000' - r."ClosedOnNullable"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (TIMESTAMP '2026-09-30 00:00:00.000000' - r."ClosedOnNullable"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (TIMESTAMP '2026-09-30 00:00:00.000000' - r."ClosedOnNullable")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 0D

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(Extract(Day From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOnNullable" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOnNullable" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 36000000000D as "c1"
FROM
	"Issue5777Row" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

