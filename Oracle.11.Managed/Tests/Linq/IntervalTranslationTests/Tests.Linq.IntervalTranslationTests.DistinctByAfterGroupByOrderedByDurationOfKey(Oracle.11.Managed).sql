-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @InSeconds Int64
SET     @InSeconds = 50
DECLARE @InTicks Int64
SET     @InTicks = 500000000
DECLARE @Undeclared Int64
SET     @Undeclared = 500000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 50

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
DECLARE @Id Int32
SET     @Id = 2
DECLARE @InSeconds Int64
SET     @InSeconds = 150
DECLARE @InTicks Int64
SET     @InTicks = 1500000000
DECLARE @Undeclared Int64
SET     @Undeclared = 1500000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 150

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
DECLARE @Id Int32
SET     @Id = 3
DECLARE @InSeconds Int64
SET     @InSeconds = 200
DECLARE @InTicks Int64
SET     @InTicks = 2000000000
DECLARE @Undeclared Int64
SET     @Undeclared = 2000000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 200

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
DECLARE @Id Int32
SET     @Id = 4
DECLARE @InSeconds Int64
SET     @InSeconds = 30
DECLARE @InTicks Int64
SET     @InTicks = 300000000
DECLARE @Undeclared Int64
SET     @Undeclared = 300000000
DECLARE @UndeclaredSeconds Int64
SET     @UndeclaredSeconds = 30

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
DECLARE @p Int64
SET     @p = 100

SELECT
	t1."RowNumber_2",
	t1."Count_1"
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e."RowNumber" ORDER BY e."RowNumber_1" DESC, e."RowNumber_2") as "RowNumber",
			e."RowNumber_1",
			e."RowNumber_2",
			e."Count_1"
		FROM
			(
				SELECT
					CASE
						WHEN g_1."InSeconds" > :p THEN 1
						ELSE 0
					END as "RowNumber",
					CAST(g_1."InSeconds" AS Float) as "RowNumber_1",
					g_1."InSeconds" as "RowNumber_2",
					COUNT(*) as "Count_1"
				FROM
					"DurationRow" g_1
				GROUP BY
					g_1."InSeconds"
			) e
	) t1
WHERE
	t1."RowNumber" = 1
ORDER BY
	t1."RowNumber_1" DESC,
	t1."RowNumber_2"

