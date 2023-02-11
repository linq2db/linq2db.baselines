BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[BaseTable]', N'U') IS NOT NULL)
	DROP TABLE [BaseTable]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[BaseTable]', N'U') IS NULL)
	CREATE TABLE [BaseTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
SELECT 1,100

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[BaseTable]', N'U') IS NOT NULL)
	DROP TABLE [BaseTable]

