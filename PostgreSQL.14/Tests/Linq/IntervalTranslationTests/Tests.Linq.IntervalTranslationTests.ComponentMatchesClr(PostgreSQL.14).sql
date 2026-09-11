-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = 183845
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = 1838450000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = 1838450000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = 183845

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
	(r."InSeconds" / 86400)::Int,
	Floor(((r."InSeconds" / 3600)::decimal % 24)::decimal)::Int,
	Floor(((r."InSeconds" / 60)::decimal % 60)::decimal)::Int,
	Floor((r."InSeconds"::decimal % 60)::decimal)::Int
FROM
	"DurationRow" r
LIMIT 2

