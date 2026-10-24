-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	CAST(r."InSeconds" AS Float) / 3600D,
	CAST(r."InTicks" AS Float) / 36000000000D
FROM
	"DurationRow" r
WHERE
	ROWNUM <= 2

