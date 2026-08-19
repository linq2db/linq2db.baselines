-- PostgreSQL.19 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 10800
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 108000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 108000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
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

-- PostgreSQL.19 PostgreSQL12
SELECT
	r."InSeconds"::Float / 3600,
	r."InTicks"::Float / 36000000000
FROM
	"DurationRow" r
LIMIT 2

