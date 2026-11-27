-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 5400
DECLARE @InTicks Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 5400

INSERT INTO "DurationRow"
(
	"Id",
	"InSeconds",
	"InTicks",
	"Undeclared",
	"UndeclaredSeconds"
)
VALUES
(
	:Id,
	:InSeconds,
	:InTicks,
	:Undeclared,
	:UndeclaredSeconds
)

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 3000000000

SELECT
	CAST(CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) + :Ticks AS Number(19)) as "SumPlusValue",
	CAST(:Ticks + CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) AS Number(19)) as "ValuePlusSum",
	CAST(CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) - :Ticks AS Number(19)) as "SumLessValue"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 108000000000

SELECT
	COUNT(*)
FROM
	"DurationRow" r
WHERE
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) = :Ticks

