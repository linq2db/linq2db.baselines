BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @dt Timestamp(20) -- DateTime
SET     @dt = '2010-12-14-05.00.07.425014'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = @dt
WHERE
	"LinqDataTypes".ID = 1

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @pdt Timestamp(20) -- DateTime
SET     @pdt = '2001-01-11-01.11.21.100000'

UPDATE
	"LinqDataTypes"
SET
	"LinqDataTypes"."DateTimeValue" = @pdt
WHERE
	"LinqDataTypes".ID = 1

