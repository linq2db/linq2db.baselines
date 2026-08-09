-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 900
DECLARE @InTicks Int64
SET     @InTicks = 9000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 9000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 900

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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @InSeconds Int64
SET     @InSeconds = 1800
DECLARE @InTicks Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 1800

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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @InSeconds Int64
SET     @InSeconds = 2700
DECLARE @InTicks Int64
SET     @InTicks = 27000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 27000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 2700

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

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 18000000000

SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	CAST(r."InSeconds" AS Number(19)) * 10000000 > :Ticks
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 18000000000

SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	CAST(r."InSeconds" AS Number(19)) * 10000000 > :Ticks
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	CAST(r."InSeconds" AS Number(19)) * 10000000 > 18000000000
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	CAST(r."InTicks" AS Number(19)) > 18000000000
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	CAST(r."InSeconds" AS Number(19)) * 10000000 > 0
ORDER BY
	r."Id"

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @Ticks Int64
SET     @Ticks = 0

SELECT
	r."Id"
FROM
	"DurationRow" r
WHERE
	CAST(r."InSeconds" AS Number(19)) * 10000000 > :Ticks
ORDER BY
	r."Id"

