-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @DueOn TimeStamp -- DateTime
SET     @DueOn = NULL
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

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @DueOn TimeStamp -- DateTime
SET     @DueOn = TIMESTAMP '2026-01-01 12:00:00.000000'
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

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."DueOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."DueOn" AS timestamp(7)) + NumToDSInterval(Trunc((CAST(:Ticks AS Number(19)) * -1) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)) * -1, 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(NULL AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(NULL AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."DueOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND')
FROM
	"OptionalDueRow" r
ORDER BY
	r."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"OptionalDueRow" r
WHERE
	CAST(r."DueOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') > r."StartedOn" + 1D * INTERVAL '1' HOUR
ORDER BY
	r."Id"

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	r."Id"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1 AND CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') < r."StartedOn" + 1D * INTERVAL '1' HOUR

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 36002500000

SELECT
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(NULL AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(NULL AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 72002500000

SELECT
	CAST(r."StartedOn" AS timestamp(7)) + NumToDSInterval(Trunc(CAST(:Ticks AS Number(19)) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(:Ticks AS Number(19)), 864000000000) / 10000000, 'SECOND') as "c1"
FROM
	"OptionalDueRow" r
WHERE
	r."Id" = 1
FETCH NEXT 2 ROWS ONLY

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(r."DueOn" AS timestamp(7)) + NumToDSInterval(Trunc((CAST(Floor(Extract(Day From (CAST(r."DueOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."DueOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."DueOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."DueOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19))) / 864000000000), 'DAY') + NumToDSInterval(MOD(CAST(Floor(Extract(Day From (CAST(r."DueOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 864000000000 + CAST(Floor(Extract(Hour From (CAST(r."DueOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 36000000000 + CAST(Floor(Extract(Minute From (CAST(r."DueOn" AS timestamp) - CAST(r."StartedOn" AS timestamp)))) AS Number(19)) * 600000000 + CAST(Floor(Round(Extract(Second From (CAST(r."DueOn" AS timestamp) - CAST(r."StartedOn" AS timestamp))) * 10000000D)) AS Number(19)), 864000000000) / 10000000, 'SECOND')
FROM
	"OptionalDueRow" r
ORDER BY
	r."Id"

