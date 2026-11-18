-- PostgreSQL.19 PostgreSQL12
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

-- PostgreSQL.19 PostgreSQL12
DECLARE @PlainValue Bigint -- Int64
SET     @PlainValue = 1800

SELECT
	r."Undeclared",
	r."UndeclaredSeconds",
	r."Undeclared" + r."Undeclared",
	r."InSeconds" + r."InSeconds",
	r."UndeclaredSeconds" + :PlainValue
FROM
	"DurationRow" r
LIMIT 2

