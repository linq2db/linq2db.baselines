﻿BeforeExecute
-- SqlServer.2016

SELECT
	[t].[Id],
	[t].[Value1],
	[t].[Value2]
FROM
	[ValueConversion] [t]
WHERE
	[t].[Value2] IS NULL

