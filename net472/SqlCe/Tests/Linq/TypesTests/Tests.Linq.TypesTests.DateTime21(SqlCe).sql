BeforeExecute
-- SqlCe
DECLARE @dt DateTime
SET     @dt = '2010-12-14 05:00:07.425'

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[DateTimeValue] = @dt
WHERE
	[LinqDataTypes].[ID] = 1

BeforeExecute
-- SqlCe
DECLARE @pdt DateTime
SET     @pdt = '2001-01-11 01:11:21.100'

UPDATE
	[LinqDataTypes]
SET
	[LinqDataTypes].[DateTimeValue] = @pdt
WHERE
	[LinqDataTypes].[ID] = 1

