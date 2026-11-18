-- PostgreSQL.11 PostgreSQL
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

-- PostgreSQL.11 PostgreSQL
WITH "CTE_1"
(
	"Id",
	"InSeconds",
	"InTicks",
	"UndeclaredSeconds"
)
AS
(
	SELECT
		r."Id",
		r."InSeconds",
		r."InTicks",
		r."UndeclaredSeconds"
	FROM
		"DurationRow" r
)
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."UndeclaredSeconds"
FROM
	"CTE_1" t1
ORDER BY
	t1."Id"
LIMIT 2

