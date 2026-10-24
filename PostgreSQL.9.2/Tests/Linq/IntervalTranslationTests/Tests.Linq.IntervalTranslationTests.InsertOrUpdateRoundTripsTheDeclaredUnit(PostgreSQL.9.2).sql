-- PostgreSQL.9.2 PostgreSQL
DECLARE @value Bigint -- Int64
SET     @value = 4567
DECLARE @value_1 Bigint -- Int64
SET     @value_1 = 45670000000

UPDATE
	"DurationRow"
SET
	"InSeconds" = :value,
	"InTicks" = :value_1
WHERE
	"DurationRow"."Id" = 1

-- PostgreSQL.9.2 PostgreSQL
DECLARE @value Bigint -- Int64
SET     @value = 4567
DECLARE @value_1 Bigint -- Int64
SET     @value_1 = 45670000000
DECLARE @value_2 Bigint -- Int64
SET     @value_2 = 45670000000
DECLARE @value_3 Bigint -- Int64
SET     @value_3 = 4567

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
	1,
	:value,
	:value_1,
	:value_2,
	:value_3
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
LIMIT 2

-- PostgreSQL.9.2 PostgreSQL
DECLARE @value Bigint -- Int64
SET     @value = 19260
DECLARE @value_1 Bigint -- Int64
SET     @value_1 = 192600000000

UPDATE
	"DurationRow"
SET
	"InSeconds" = :value,
	"InTicks" = :value_1
WHERE
	"DurationRow"."Id" = 1

-- PostgreSQL.9.2 PostgreSQL
SELECT
	t1."Id",
	t1."InSeconds",
	t1."InTicks",
	t1."Undeclared",
	t1."UndeclaredSeconds"
FROM
	"DurationRow" t1
LIMIT 2

