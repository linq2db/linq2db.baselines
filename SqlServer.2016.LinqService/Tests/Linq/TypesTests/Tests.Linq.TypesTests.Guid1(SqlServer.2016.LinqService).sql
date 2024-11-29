BeforeExecute
-- SqlServer.2016
DECLARE @p UniqueIdentifier -- Guid
SET     @p = 'd2f970c0-35ac-4987-9cd5-5badb1757436'

SELECT
	[p].[GuidValue]
FROM
	[LinqDataTypes] [p]
WHERE
	[p].[GuidValue] = @p

