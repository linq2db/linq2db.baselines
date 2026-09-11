-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = 5
DECLARE @Value Varchar2(7) -- String
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

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'updated'
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = 5

UPDATE
	"ConcurrencyRefreshAutoInc" obj
SET
	"Stamp" = obj."Stamp" + 1,
	"Value" = :Value
WHERE
	obj."Id" = :Id AND obj."Stamp" = :Stamp

-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1

SELECT
	obj."Stamp"
FROM
	"ConcurrencyRefreshAutoInc" obj
WHERE
	obj."Id" = :Id
FETCH NEXT 1 ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Stamp",
	t1."Value" as "Value_1"
FROM
	"ConcurrencyRefreshAutoInc" t1
FETCH NEXT 2 ROWS ONLY

