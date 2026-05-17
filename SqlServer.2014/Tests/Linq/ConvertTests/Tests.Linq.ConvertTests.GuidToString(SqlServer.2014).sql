-- SqlServer.2014
DECLARE @guid NVarChar(4000) -- String
SET     @guid = N'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	Lower(CAST([t].[GuidValue] AS Char(36))) = @guid

