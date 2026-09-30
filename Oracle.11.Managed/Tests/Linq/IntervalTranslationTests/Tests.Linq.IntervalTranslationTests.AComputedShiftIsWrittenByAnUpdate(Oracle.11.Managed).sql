-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 15:30:00.250000'
DECLARE @Due TimeStamp -- DateTime
SET     @Due = TIMESTAMP '2026-01-01 10:00:00.000000'

INSERT INTO "ShiftTargetRow"
(
	"Id",
	"StartedOn",
	"FinishedOn",
	"Due"
)
VALUES
(
	:Id,
	:StartedOn,
	:FinishedOn,
	:Due
)

-- Oracle.11.Managed Oracle11
UPDATE
	"ShiftTargetRow" r
SET
	"Due" = TIMESTAMP '2026-03-01 00:00:00.0000000' + NumToDSInterval(Trunc((CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(Floor(Extract(Day From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."FinishedOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)), 864000000000) / 10000000, 'SECOND')
WHERE
	r."Id" = 1

-- Oracle.11.Managed Oracle11
SELECT
	r."Due"
FROM
	"ShiftTargetRow" r
WHERE
	ROWNUM <= 2

