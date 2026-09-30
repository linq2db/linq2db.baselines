-- Oracle.11.Managed Oracle11
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D < 12D

-- Oracle.11.Managed Oracle11
SELECT
	r."Id"
FROM
	"Issue5777Row" r
ORDER BY
	CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 36000000000D

-- Oracle.11.Managed Oracle11
SELECT
	CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D,
	CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 36000000000D,
	CAST(CAST(Floor(Extract(Day From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - r."OpenedOn")) * 10000000D)) AS Number(19)) AS Float) / 600000000D,
	CAST(Trunc((CAST(Floor(Extract(Day From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - r."OpenedOn")) * 10000000D)) AS Number(19))) / 864000000000) AS Int),
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (r."ClosedOn" - r."OpenedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (r."ClosedOn" - r."OpenedOn")) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int)
FROM
	"Issue5777Row" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

