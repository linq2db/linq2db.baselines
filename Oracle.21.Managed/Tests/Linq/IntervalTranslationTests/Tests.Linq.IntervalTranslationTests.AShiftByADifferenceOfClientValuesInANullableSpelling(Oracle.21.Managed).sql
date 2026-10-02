-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @DueOn TimeStamp -- DateTime
SET     @DueOn = TIMESTAMP '2026-01-01 10:00:00.000000'
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-01 10:00:00.000000'

INSERT INTO "OptionalDueRow"
(
	"Id",
	"DueOn",
	"StartedOn"
)
VALUES
(
	:Id,
	:DueOn,
	:StartedOn
)

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."DueOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."DueOn" AS timestamp(7)) + NumToDSInterval(Trunc((CAST(:Ticks AS Number(19)) * -1) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)) * -1, 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(NULL AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(NULL AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"OptionalDueRow" r
WHERE
	CAST(r."DueOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') > r."StartedOn" + 1D * INTERVAL '1' HOUR

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"OptionalDueRow" r
WHERE
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') < r."StartedOn" + 1D * INTERVAL '1' HOUR

