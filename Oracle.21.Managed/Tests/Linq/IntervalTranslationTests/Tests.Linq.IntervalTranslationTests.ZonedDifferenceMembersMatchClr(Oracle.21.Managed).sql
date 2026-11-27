-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStampTZ -- DateTimeOffset
SET     @StartedOn = 01/01/2026 10:00:00 +00:00
DECLARE @FinishedOn TimeStampTZ -- DateTimeOffset
SET     @FinishedOn = 01/03/2026 15:04:05.006 +02:00

INSERT INTO "ZonedEventRow"
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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(Trunc((CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19))) / 864000000000) AS Int) as "Days",
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19))) / 36000000000), 24) AS Int) as "Hours",
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19))) / 600000000), 60) AS Int) as "Minutes",
	CAST(MOD(Trunc((CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19))) / 10000000), 60) AS Int) as "Seconds",
	CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19)) as "Ticks",
	CAST(CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19)) AS Float) / 864000000000D as "TotalDays",
	CAST(CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19)) AS Float) / 36000000000D as "TotalHours",
	CAST(CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19)) AS Float) / 600000000D as "TotalMinutes",
	CAST(CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19)) AS Float) / 10000000D as "TotalSeconds",
	CAST(CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19)) AS Float) / 10000D as "TotalMilliseconds"
FROM
	"ZonedEventRow" r
FETCH NEXT 2 ROWS ONLY

