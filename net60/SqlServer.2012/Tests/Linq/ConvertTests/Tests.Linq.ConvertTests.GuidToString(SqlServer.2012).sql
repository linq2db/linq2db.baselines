﻿BeforeExecute
-- SqlServer.2012
DECLARE @guid NVarChar(4000) -- String
SET     @guid = N'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	Lower(Convert(NVarChar(36), [t].[GuidValue])) = @guid

