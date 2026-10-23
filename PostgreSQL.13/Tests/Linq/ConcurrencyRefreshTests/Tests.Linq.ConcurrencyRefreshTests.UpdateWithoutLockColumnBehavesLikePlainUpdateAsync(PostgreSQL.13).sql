-- PostgreSQL.13 PostgreSQL12
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value Text(7) -- String
SET     @Value = 'initial'

INSERT INTO "ConcurrencyRefreshNoLock"
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

-- PostgreSQL.13 PostgreSQL12
DECLARE @Stamp Integer -- Int32
SET     @Stamp = 5
DECLARE @Value Text(7) -- String
SET     @Value = 'updated'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"ConcurrencyRefreshNoLock"
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	"ConcurrencyRefreshNoLock"."Id" = :Id

-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Id",
	r."Stamp",
	r."Value"
FROM
	"ConcurrencyRefreshNoLock" r
WHERE
	r."Id" = 1
LIMIT 2

