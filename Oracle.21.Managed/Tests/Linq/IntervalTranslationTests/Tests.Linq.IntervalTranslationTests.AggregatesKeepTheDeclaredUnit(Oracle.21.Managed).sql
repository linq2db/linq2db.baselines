-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
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

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			MIN(t2."InSeconds")
		FROM
			"DurationRow" t2
	) as "Min_1",
	(
		SELECT
			MAX(t3."InSeconds")
		FROM
			"DurationRow" t3
	) as "Max_1",
	Coalesce((
		SELECT
			SUM(CAST(t4."InSeconds" AS Float) / 60D)
		FROM
			"DurationRow" t4
	), 0D) as "TotalMin"
FROM
	"DurationRow" t1
FETCH NEXT 1 ROWS ONLY

