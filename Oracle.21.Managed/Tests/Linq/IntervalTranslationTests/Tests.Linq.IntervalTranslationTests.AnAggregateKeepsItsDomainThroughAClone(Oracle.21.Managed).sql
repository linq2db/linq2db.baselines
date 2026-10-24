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
SELECT
	(
		SELECT
			MIN(t1."InSeconds")
		FROM
			"DurationRow" t1
	) as "Min_1",
	(
		SELECT
			MAX(t2."InSeconds")
		FROM
			"DurationRow" t2
	) as "Max_1"
FROM
	"DurationRow" r
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
SELECT
	(
		SELECT
			MIN(t1."InSeconds")
		FROM
			"DurationRow" t1
	) as "Min_1",
	(
		SELECT
			MAX(t2."InSeconds")
		FROM
			"DurationRow" t2
	) as "Max_1"
FROM
	"DurationRow" r
FETCH NEXT 1 ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @p Int64
SET     @p = 60

SELECT
	(
		SELECT
			MIN(t1."InSeconds")
		FROM
			"DurationRow" t1
	) as "Min_1"
FROM
	"DurationRow" r
WHERE
	r."InSeconds" > :p
FETCH NEXT 1 ROWS ONLY

