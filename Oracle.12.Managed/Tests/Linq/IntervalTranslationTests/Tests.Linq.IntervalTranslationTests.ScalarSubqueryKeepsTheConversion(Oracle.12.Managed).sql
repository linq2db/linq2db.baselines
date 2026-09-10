-- Oracle.12.Managed Oracle.Managed Oracle12
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

-- Oracle.12.Managed Oracle.Managed Oracle12
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

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			MIN(t2."InSeconds")
		FROM
			"DurationRow" t2
	) as "Seconds",
	(
		SELECT
			MIN(t3."InTicks")
		FROM
			"DurationRow" t3
	) as "Ticks",
	(
		SELECT
			MIN(t4."UndeclaredSeconds")
		FROM
			"DurationRow" t4
	) as "Converted",
	(
		SELECT
			MAX(t5."InSeconds")
		FROM
			"DurationRow" t5
	) as "Largest"
FROM
	"DurationRow" t1
FETCH NEXT 1 ROWS ONLY

