-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStampTZ -- DateTimeOffset
SET     @StartedOn = 01/01/2026 10:00:00 +02:00
DECLARE @FinishedOn TimeStampTZ -- DateTimeOffset
SET     @FinishedOn = 01/01/2026 15:30:00.25 +02:00

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

-- Oracle.11.Managed Oracle11
SELECT
	r."FinishedOn" + NumToDSInterval(Trunc((CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19))) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(Floor(Extract(Day From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn")))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (Sys_Extract_Utc(r."FinishedOn") - Sys_Extract_Utc(r."StartedOn"))) * 10000000D)) AS Number(19)), 864000000000) / 10000000, 'SECOND')
FROM
	"ZonedEventRow" r
WHERE
	ROWNUM <= 2

