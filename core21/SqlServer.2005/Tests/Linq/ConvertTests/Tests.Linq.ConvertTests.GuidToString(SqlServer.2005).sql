﻿BeforeExecute
-- SqlServer.2005
DECLARE @guid NVarChar(4000) -- String
SET     @guid = N'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	Convert(NVarChar(36), [t].[GuidValue]) = @guid

