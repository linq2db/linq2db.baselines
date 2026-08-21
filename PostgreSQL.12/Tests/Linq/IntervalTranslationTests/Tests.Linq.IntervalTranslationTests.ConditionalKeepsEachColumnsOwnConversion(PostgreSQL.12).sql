-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
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

-- PostgreSQL.12 PostgreSQL12
SELECT
	r."Id",
	r."Undeclared",
	r."UndeclaredSeconds"
FROM
	"DurationRow" r
ORDER BY
	r."Id"

