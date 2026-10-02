-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @StartedOn TimeStamp -- DateTime
SET     @StartedOn = TIMESTAMP '2026-01-03 13:30:00.000000'
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 14:30:00.000000'

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

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 1234
DECLARE @TotalMilliseconds BinaryDouble -- Double
SET     @TotalMilliseconds = 0.1234D

SELECT
	:Ticks + r."Id" as "Ticks",
	:TotalMilliseconds + CAST(r."Id" AS Float) as "Milliseconds"
FROM
	"EventRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"EventRow" r

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"EventRow" r

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @FinishedOn TimeStamp -- DateTime
SET     @FinishedOn = TIMESTAMP '2026-01-03 13:30:00.000246'

SELECT
	r."Id"
FROM
	"EventRow" r
WHERE
	r."FinishedOn" > :FinishedOn

