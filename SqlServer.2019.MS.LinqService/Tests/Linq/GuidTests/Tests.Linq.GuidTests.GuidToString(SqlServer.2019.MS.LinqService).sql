﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (1)
	Lower(CAST([t].[Id] AS Char(36)))
FROM
	[TableWithGuid] [t]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'%63d-0f%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'bc7b6%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'%8f4-53%' ESCAPE N'~'

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[t].[Id],
	[t].[NullableGuid]
FROM
	[TableWithGuid] [t]
WHERE
	Lower(CAST([t].[Id] AS Char(36))) LIKE N'8f4-53%' ESCAPE N'~'

