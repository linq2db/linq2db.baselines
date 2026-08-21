-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @InSeconds Bigint -- Int64
SET     @InSeconds = -90000
DECLARE @InTicks Bigint -- Int64
SET     @InTicks = -900000000000
DECLARE @Undeclared Bigint -- Int64
SET     @Undeclared = -900000000000
DECLARE @UndeclaredSeconds Bigint -- Int64
SET     @UndeclaredSeconds = -90000

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

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	(r."InSeconds" / 86400)::Int,
	Floor(((r."InSeconds" / 3600)::decimal % 24)::decimal)::Int,
	r."InSeconds"::Float / 3600
FROM
	"DurationRow" r
LIMIT 2

