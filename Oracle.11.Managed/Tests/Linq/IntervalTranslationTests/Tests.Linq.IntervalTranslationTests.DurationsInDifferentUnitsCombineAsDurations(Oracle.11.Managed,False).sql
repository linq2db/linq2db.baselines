-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
SELECT
	r."InSeconds" + r."InSeconds",
	r."InTicks" + r."InTicks",
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)),
	CAST(r."InSeconds" * 10000000 - r."InTicks" AS Number(19)),
	CAST(r."InTicks" - r."InSeconds" * 10000000 AS Number(19)),
	CAST(CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) + r."InSeconds" * 10000000 AS Number(19)),
	CAST(CAST(-r."InSeconds" AS Number(19)) * 10000000 + r."InTicks" AS Number(19)),
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)),
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19)) + r."InTicks" + r."InTicks",
	CAST(CAST(r."InSeconds" + r."InSeconds" AS Number(19)) * 10000000 + r."InTicks" AS Number(19)) - (r."InTicks" + r."InTicks"),
	CAST(CAST(-r."InSeconds" AS Number(19)) * 10000000 - r."InTicks" AS Number(19))
FROM
	"DurationRow" r
WHERE
	ROWNUM <= 2

-- Oracle.11.Managed Oracle11
SELECT
	CAST(r."InSeconds" * 10000000 + r."InTicks" AS Number(19))
FROM
	"DurationRow" r
WHERE
	ROWNUM <= 2

