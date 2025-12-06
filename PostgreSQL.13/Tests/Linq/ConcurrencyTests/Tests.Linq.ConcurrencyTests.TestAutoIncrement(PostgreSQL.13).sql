-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value Text(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyAutoIncrement"
(
	"Id",
	"Stamp",
	"Value"
)
VALUES
(
	:Id,
	:Stamp,
	:Value
)

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Value Text(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyAutoIncrement"
SET
	"Stamp" = "ConcurrencyAutoIncrement"."Stamp" + 1,
	"Value" = :Value
WHERE
	"ConcurrencyAutoIncrement"."Id" = :Id AND "ConcurrencyAutoIncrement"."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Value Text(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement"
SET
	"Stamp" = "ConcurrencyAutoIncrement"."Stamp" + 1,
	"Value" = :Value
WHERE
	"ConcurrencyAutoIncrement"."Id" = :Id AND "ConcurrencyAutoIncrement"."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Value Text(7) -- String
SET     @Value = 'value 3'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

UPDATE
	"ConcurrencyAutoIncrement"
SET
	"Stamp" = "ConcurrencyAutoIncrement"."Stamp" + 1,
	"Value" = :Value
WHERE
	"ConcurrencyAutoIncrement"."Id" = :Id AND "ConcurrencyAutoIncrement"."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyAutoIncrement" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -8

DELETE FROM
	"ConcurrencyAutoIncrement" obj
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyAutoIncrement" t1

