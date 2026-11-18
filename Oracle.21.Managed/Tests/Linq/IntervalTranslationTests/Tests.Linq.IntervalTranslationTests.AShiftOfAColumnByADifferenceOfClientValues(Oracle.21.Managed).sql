-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-01 12:00:00.000000'

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

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"EventRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."FinishedOn" AS timestamp(7)) + NumToDSInterval(Trunc((CAST(:Ticks AS Number(19)) * -1) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)) * -1, 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"EventRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') < r."FinishedOn"

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	CAST(r."FinishedOn" AS timestamp(7)) + NumToDSInterval(Trunc((CAST(:Ticks AS Number(19)) * -1) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)) * -1, 864000000000) / 10000000, 'SECOND') > r."StartedOn" + 1D * INTERVAL '1' HOUR

