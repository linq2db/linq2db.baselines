-- Oracle.11.Managed Oracle11
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
WHERE
	CAST(CAST(Floor(Extract(Day From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (LOCALTIMESTAMP - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D > 300D

-- Oracle.11.Managed Oracle11
SELECT
	r."Id"
FROM
	"ClosedPeriodRow" r
ORDER BY
	CAST(CAST(Floor(Extract(Day From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (LOCALTIMESTAMP - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D

-- Oracle.11.Managed Oracle11
SELECT
	CAST(CAST(Floor(Extract(Day From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (LOCALTIMESTAMP - r."ClosedOn")) * 10000000D)) AS Number(19)) AS Float) / 864000000000D,
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (LOCALTIMESTAMP - r."ClosedOn"))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (LOCALTIMESTAMP - r."ClosedOn")) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int)
FROM
	"ClosedPeriodRow" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

