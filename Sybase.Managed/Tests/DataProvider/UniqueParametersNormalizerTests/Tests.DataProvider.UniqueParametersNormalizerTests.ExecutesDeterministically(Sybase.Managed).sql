BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'table1') IS NOT NULL)
	DROP TABLE [table1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'table1') IS NULL)
	EXECUTE('
		CREATE TABLE [table1]
		(
			[Id]     Int           NOT NULL,
			[Field1] NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'table2') IS NOT NULL)
	DROP TABLE [table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'table2') IS NULL)
	EXECUTE('
		CREATE TABLE [table2]
		(
			[Table1Id] Int           NOT NULL,
			[Field2]   NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'table3') IS NOT NULL)
	DROP TABLE [table3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'table3') IS NULL)
	EXECUTE('
		CREATE TABLE [table3]
		(
			[Table1Id] Int           NOT NULL,
			[Field3]   NVarChar(255)     NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @search UniVarChar(5) -- String
SET     @search = 'test%'
DECLARE @search_1 UniVarChar(4) -- String
SET     @search_1 = 'test'
DECLARE @search_2 UniVarChar(5) -- String
SET     @search_2 = 'test%'

SELECT
	[row1].[Id]
FROM
	[table1] [row1]
		INNER JOIN [table2] [row2] ON [row1].[Id] = [row2].[Table1Id]
WHERE
	[row2].[Field2] LIKE @search ESCAPE '~'
UNION
SELECT
	[row1_1].[Id]
FROM
	[table1] [row1_1]
		INNER JOIN [table3] [row3] ON [row1_1].[Id] = [row3].[Table1Id]
WHERE
	[row3].[Field3] = @search_1 AND [row3].[Field3] IS NOT NULL
UNION
SELECT
	[row1_2].[Id]
FROM
	[table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE @search_2 ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)
DECLARE @search UniVarChar(5) -- String
SET     @search = 'test%'
DECLARE @search_1 UniVarChar(4) -- String
SET     @search_1 = 'test'
DECLARE @search_2 UniVarChar(5) -- String
SET     @search_2 = 'test%'

SELECT
	[row1].[Id]
FROM
	[table1] [row1]
		INNER JOIN [table2] [row2] ON [row1].[Id] = [row2].[Table1Id]
WHERE
	[row2].[Field2] LIKE @search ESCAPE '~'
UNION
SELECT
	[row1_1].[Id]
FROM
	[table1] [row1_1]
		INNER JOIN [table3] [row3] ON [row1_1].[Id] = [row3].[Table1Id]
WHERE
	[row3].[Field3] = @search_1 AND [row3].[Field3] IS NOT NULL
UNION
SELECT
	[row1_2].[Id]
FROM
	[table1] [row1_2]
WHERE
	[row1_2].[Field1] LIKE @search_2 ESCAPE '~'

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'table3') IS NOT NULL)
	DROP TABLE [table3]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'table2') IS NOT NULL)
	DROP TABLE [table2]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'table1') IS NOT NULL)
	DROP TABLE [table1]

