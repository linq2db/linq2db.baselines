BeforeExecute
-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	NewID()
FROM
	[LinqDataTypes] [p]

