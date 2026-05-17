-- Oracle.11.Managed Oracle11
DECLARE @addMask Int32
SET     @addMask = 3
DECLARE @removeMask Int32
SET     @removeMask = 12

UPDATE
	"WarehouseTableDto" t1
SET
	"Value" = BITAND((t1."Value" + :addMask) - BITAND(t1."Value", :addMask), -1 - :removeMask)

-- Oracle.11.Managed Oracle11

SELECT
	t1."Id",
	t1."Value"
FROM
	"WarehouseTableDto" t1
WHERE
	ROWNUM <= 2

