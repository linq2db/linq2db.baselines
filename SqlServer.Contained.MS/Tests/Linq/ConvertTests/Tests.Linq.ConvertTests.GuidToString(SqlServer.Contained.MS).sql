﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019
DECLARE @guid NVarChar(4000) -- String
SET     @guid = N'febe3eca-cb5f-40b2-ad39-2979d312afca'

SELECT
	[t].[GuidValue]
FROM
	[LinqDataTypes] [t]
WHERE
	Lower(CAST([t].[GuidValue] AS NVarChar(36))) = @guid

