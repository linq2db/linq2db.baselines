BeforeExecute
-- SqlServer.2005
DECLARE @dt DateTime
SET     @dt = '2010-12-14T05:00:07.425'

UPDATE
	[t1]
SET
	[t1].[DateTimeValue] = @dt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- SqlServer.2005
DECLARE @pdt DateTime
SET     @pdt = '2001-01-11T01:11:21.100'

UPDATE
	[t1]
SET
	[t1].[DateTimeValue] = @pdt
FROM
	[LinqDataTypes] [t1]
WHERE
	[t1].[ID] = 1

