-- Sybase.Managed Sybase
DECLARE @guid UniVarChar(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	Lower(CAST([t].[GuidValue] AS NVarChar(36))) = @guid

