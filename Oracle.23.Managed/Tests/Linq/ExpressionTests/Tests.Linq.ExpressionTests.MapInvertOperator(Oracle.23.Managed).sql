-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @addMask Int32
SET     @addMask = 3
DECLARE @removeMask Int32
SET     @removeMask = 12

UPDATE
	"WarehouseTableDto" t1
SET
	"Value" = BITAND((t1."Value" + :addMask) - BITAND(t1."Value", :addMask), -1 - :removeMask)

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value" as "Value_1"
FROM
	"WarehouseTableDto" t1
FETCH NEXT 2 ROWS ONLY

