-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 50
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 500000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 500000000
DECLARE @UndeclaredSeconds Bigint -- Int64
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

-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 150
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 1500000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 1500000000
DECLARE @UndeclaredSeconds Bigint -- Int64
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

-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 200
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 2000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 2000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
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

-- PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 30
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 300000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 300000000
DECLARE @UndeclaredSeconds Bigint -- Int64
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

-- PostgreSQL.15 PostgreSQL12
DECLARE @p Bigint -- Int64
SET     @p = 100

SELECT
	t1."Key_1",
	t1."Count_1"
FROM
	(
		SELECT DISTINCT ON (g_2."Key_1" > :p)
			g_2."TotalSeconds",
			g_2."Key_1",
			g_2."Count_1"
		FROM
			(
				SELECT
					g_1."InSeconds" as "Key_1",
					g_1."InSeconds"::Float as "TotalSeconds",
					COUNT(*) as "Count_1"
				FROM
					"DurationRow" g_1
				GROUP BY
					g_1."InSeconds"
			) g_2
		ORDER BY
			g_2."Key_1" > :p,
			g_2."TotalSeconds" DESC,
			g_2."Key_1"
	) t1
ORDER BY
	t1."TotalSeconds" DESC,
	t1."Key_1"

