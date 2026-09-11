-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Stamp Int32
SET     @Stamp = 5
DECLARE @Value Varchar2(7) -- String
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

-- Oracle.11.Managed Oracle11
DECLARE @Stamp Int32
SET     @Stamp = 5
DECLARE @Value Varchar2(7) -- String
SET     @Value = 'updated'
DECLARE @Id Int32
SET     @Id = 1

UPDATE
	"ConcurrencyRefreshNoLock" obj
SET
	"Stamp" = :Stamp,
	"Value" = :Value
WHERE
	obj."Id" = :Id

-- Oracle.11.Managed Oracle11
SELECT
	r."Id",
	r."Stamp",
	r."Value"
FROM
	"ConcurrencyRefreshNoLock" r
WHERE
	r."Id" = 1 AND ROWNUM <= 2

