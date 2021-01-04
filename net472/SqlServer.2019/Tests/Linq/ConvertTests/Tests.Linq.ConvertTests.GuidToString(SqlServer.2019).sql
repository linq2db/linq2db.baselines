BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @guid NVarChar(4000) -- String
SET     @guid = N'FEBE3ECA-CB5F-40B2-AD39-2979D312AFCA'

SELECT
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(NVarChar(36), [t].[GuidValue]) = @guid

