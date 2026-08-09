-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 10800
DECLARE @InTicks Int64
SET     @InTicks = 108000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 10800

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

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	CAST(CAST(r."InSeconds" AS Number(19)) * 10000000 AS Float) / 36000000000D as "TotalHours",
	CAST(CAST(r."InTicks" AS Number(19)) AS Float) / 36000000000D as "TotalHours_1"
FROM
	"DurationRow" r
FETCH NEXT 2 ROWS ONLY

