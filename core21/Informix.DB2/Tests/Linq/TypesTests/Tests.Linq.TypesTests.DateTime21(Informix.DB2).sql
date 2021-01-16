BeforeExecute
-- Informix.DB2 Informix
DECLARE @dt Timestamp(16) -- DateTime
SET     @dt = TO_DATE('2010-12-14 05:00:07.42501', '%Y-%m-%d %H:%M:%S.%F5')

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.DateTimeValue = @dt
WHERE
	LinqDataTypes.ID = 1

BeforeExecute
-- Informix.DB2 Informix
DECLARE @pdt Timestamp(16) -- DateTime
SET     @pdt = TO_DATE('2001-01-11 01:11:21.10000', '%Y-%m-%d %H:%M:%S.%F5')

UPDATE
	LinqDataTypes
SET
	LinqDataTypes.DateTimeValue = @pdt
WHERE
	LinqDataTypes.ID = 1

