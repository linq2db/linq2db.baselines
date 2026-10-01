-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
WHERE
	CAST(CAST(Floor(Extract(Day From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (LOCALTIMESTAMP - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 300D

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"Issue5777Row" r
ORDER BY
	CAST(CAST(Floor(Extract(Day From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (LOCALTIMESTAMP - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(Floor(Extract(Day From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (LOCALTIMESTAMP - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D as "TotalDays",
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (LOCALTIMESTAMP - r."ClosedOn")) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int) as "Hours"
FROM
	"Issue5777Row" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

