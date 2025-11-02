-- SqlServer.2025 SqlServer.2022
DECLARE @search NVarChar(4000) -- String
SET     @search = N'test%'
DECLARE @search_1 NVarChar(4000) -- String
SET     @search_1 = N'test'
DECLARE @search_2 NVarChar(4000) -- String
SET     @search_2 = N'test%'

SELECT
	[row1].[Id]
FROM
	[table1] [row1]
		INNER JOIN [table2] [row2] ON [row1].[Id] = [row2].[Table1Id]
WHERE
	[row2].[Field2] LIKE @search ESCAPE N'~'
UNION
SELECT
	[row1_1].[Id]
FROM
	[table1] [row1_1]
		INNER JOIN [table3] [row3] ON [row1_1].[Id] = [row3].[Table1Id]
WHERE
	[row3].[Field3] = @search_1
UNION
SELECT
	[row1_2].[Id]
FROM
	[table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE @search_2 ESCAPE N'~'

-- SqlServer.2025 SqlServer.2022
DECLARE @search NVarChar(4000) -- String
SET     @search = N'test%'
DECLARE @search_1 NVarChar(4000) -- String
SET     @search_1 = N'test'
DECLARE @search_2 NVarChar(4000) -- String
SET     @search_2 = N'test%'

SELECT
	[row1].[Id]
FROM
	[table1] [row1]
		INNER JOIN [table2] [row2] ON [row1].[Id] = [row2].[Table1Id]
WHERE
	[row2].[Field2] LIKE @search ESCAPE N'~'
UNION
SELECT
	[row1_1].[Id]
FROM
	[table1] [row1_1]
		INNER JOIN [table3] [row3] ON [row1_1].[Id] = [row3].[Table1Id]
WHERE
	[row3].[Field3] = @search_1
UNION
SELECT
	[row1_2].[Id]
FROM
	[table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE @search_2 ESCAPE N'~'

