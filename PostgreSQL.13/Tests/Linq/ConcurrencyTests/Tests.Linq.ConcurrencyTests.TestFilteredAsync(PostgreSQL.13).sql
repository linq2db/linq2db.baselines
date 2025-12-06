-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10
DECLARE @Value Text(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyFiltered"
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
	"ConcurrencyFiltered" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Value Text(7) -- String
SET     @Value = 'value 1'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered"
SET
	"Stamp" = "ConcurrencyFiltered"."Stamp" + 1,
	"Value" = :Value
WHERE
	"ConcurrencyFiltered"."Id" = 2 AND "ConcurrencyFiltered"."Id" = :Id AND
	"ConcurrencyFiltered"."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Value Text(7) -- String
SET     @Value = 'value 2'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -10

UPDATE
	"ConcurrencyFiltered"
SET
	"Stamp" = "ConcurrencyFiltered"."Stamp" + 1,
	"Value" = :Value
WHERE
	"ConcurrencyFiltered"."Id" = 1 AND "ConcurrencyFiltered"."Id" = :Id AND
	"ConcurrencyFiltered"."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" r
WHERE
	r."Id" = 2 AND r."Id" = :Id AND r."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

-- PostgreSQL.13 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = -9

DELETE FROM
	"ConcurrencyFiltered" r
WHERE
	r."Id" = 1 AND r."Id" = :Id AND r."Stamp" = :Stamp

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyFiltered" t1

