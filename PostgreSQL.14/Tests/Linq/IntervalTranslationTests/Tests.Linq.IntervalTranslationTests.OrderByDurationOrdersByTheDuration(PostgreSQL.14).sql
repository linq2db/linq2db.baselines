-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 5400
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 54000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 54000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 1800
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 18000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 18000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 3600
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 36000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 36000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 3600

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

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"DurationRow" r
ORDER BY
	r."InSeconds"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	r."Id"
FROM
	"DurationRow" r
ORDER BY
	r."InTicks" DESC

