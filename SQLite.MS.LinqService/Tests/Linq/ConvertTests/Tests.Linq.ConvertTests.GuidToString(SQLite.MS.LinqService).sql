BeforeExecute
-- SQLite.MS SQLite
DECLARE @guid NVarChar(36) -- String
SET     @guid = 'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	Lower(Substr(Hex([t].[GuidValue]), 7, 2) || Substr(Hex([t].[GuidValue]), 5, 2) || Substr(Hex([t].[GuidValue]), 3, 2) || Substr(Hex([t].[GuidValue]), 1, 2) || '-' || Substr(Hex([t].[GuidValue]), 11, 2) || Substr(Hex([t].[GuidValue]), 9, 2) || '-' || Substr(Hex([t].[GuidValue]), 15, 2) || Substr(Hex([t].[GuidValue]), 13, 2) || '-' || Substr(Hex([t].[GuidValue]), 17, 4) || '-' || Substr(Hex([t].[GuidValue]), 21, 12)) = @guid

