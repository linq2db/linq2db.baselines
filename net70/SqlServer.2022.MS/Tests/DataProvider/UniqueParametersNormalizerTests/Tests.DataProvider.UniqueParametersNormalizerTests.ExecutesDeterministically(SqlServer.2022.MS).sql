﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

CREATE TABLE [tempdb]..[#table1]
(
	[Id]     Int            NOT NULL,
	[Field1] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

CREATE TABLE [tempdb]..[#table2]
(
	[Table1Id] Int            NOT NULL,
	[Field2]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

CREATE TABLE [tempdb]..[#table3]
(
	[Table1Id] Int            NOT NULL,
	[Field3]   NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @search NVarChar(4000) -- String
SET     @search = N'test%'
DECLARE @search_1 NVarChar(4000) -- String
SET     @search_1 = N'test'
DECLARE @search_2 NVarChar(4000) -- String
SET     @search_2 = N'test%'

SELECT
	[row1].[Id]
FROM
	[tempdb]..[#table1] [row1]
		INNER JOIN [tempdb]..[#table2] [row2] ON [row1].[Id] = [row2].[Table1Id]
WHERE
	[row2].[Field2] LIKE @search ESCAPE N'~'
UNION
SELECT
	[row1_1].[Id]
FROM
	[tempdb]..[#table1] [row1_1]
		INNER JOIN [tempdb]..[#table3] [row3] ON [row1_1].[Id] = [row3].[Table1Id]
WHERE
	[row3].[Field3] = @search_1
UNION
SELECT
	[row1_2].[Id]
FROM
	[tempdb]..[#table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE @search_2 ESCAPE N'~'

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)
DECLARE @search NVarChar(4000) -- String
SET     @search = N'test%'
DECLARE @search_1 NVarChar(4000) -- String
SET     @search_1 = N'test'
DECLARE @search_2 NVarChar(4000) -- String
SET     @search_2 = N'test%'

SELECT
	[row1].[Id]
FROM
	[tempdb]..[#table1] [row1]
		INNER JOIN [tempdb]..[#table2] [row2] ON [row1].[Id] = [row2].[Table1Id]
WHERE
	[row2].[Field2] LIKE @search ESCAPE N'~'
UNION
SELECT
	[row1_1].[Id]
FROM
	[tempdb]..[#table1] [row1_1]
		INNER JOIN [tempdb]..[#table3] [row3] ON [row1_1].[Id] = [row3].[Table1Id]
WHERE
	[row3].[Field3] = @search_1
UNION
SELECT
	[row1_2].[Id]
FROM
	[tempdb]..[#table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE @search_2 ESCAPE N'~'

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#table3]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#table2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [tempdb]..[#table1]

