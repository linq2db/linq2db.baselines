-- PostgreSQL.18 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value Text(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyRefreshAutoInc"
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

-- PostgreSQL.18 PostgreSQL12
DECLARE @Value Text(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5

UPDATE
	"ConcurrencyRefreshAutoInc"
SET
	"Stamp" = "ConcurrencyRefreshAutoInc"."Stamp" + 1,
	"Value" = :Value
WHERE
	"ConcurrencyRefreshAutoInc"."Id" = :Id AND "ConcurrencyRefreshAutoInc"."Stamp" = :Stamp
RETURNING
	NEW."Stamp"

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyRefreshAutoInc" t1
LIMIT 2

