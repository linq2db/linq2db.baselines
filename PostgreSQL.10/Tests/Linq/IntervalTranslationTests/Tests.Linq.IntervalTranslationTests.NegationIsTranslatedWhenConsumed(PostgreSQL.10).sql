-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	(-r."InSeconds")::BigInt::Float / 3600,
	Floor((((-r."InSeconds")::BigInt / 3600)::decimal % 24)::decimal)::Int
FROM
	"DurationRow" r
LIMIT 2

