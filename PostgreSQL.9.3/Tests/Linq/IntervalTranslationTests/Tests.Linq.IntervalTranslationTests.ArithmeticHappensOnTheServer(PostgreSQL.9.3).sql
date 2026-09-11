-- PostgreSQL.9.3 PostgreSQL
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

-- PostgreSQL.9.3 PostgreSQL
SELECT
	r."InSeconds"::Float / 3600,
	Floor(((r."InSeconds" / 3600)::decimal % 24)::decimal)::Int,
	r."InTicks"::Float / 600000000
FROM
	"DurationRow" r
LIMIT 2

