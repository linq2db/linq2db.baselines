-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
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

-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1

SELECT
	obj."Stamp"
FROM
	"ConcurrencyRefreshAutoInc" obj
WHERE
	obj."Id" = :Id AND ROWNUM <= 1

-- Oracle.11.Managed Oracle11
SELECT
	t1."Id",
	t1."Stamp",
	t1."Value"
FROM
	"ConcurrencyRefreshAutoInc" t1
WHERE
	ROWNUM <= 2

