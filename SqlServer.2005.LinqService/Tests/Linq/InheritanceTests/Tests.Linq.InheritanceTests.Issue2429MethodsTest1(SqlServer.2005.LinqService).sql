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
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BaseValue Int -- Int32
SET     @BaseValue = 100

INSERT INTO [BaseTable]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@BaseValue
)

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
	[x].[Id],
	[x].[Value]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SqlServer.2005

SELECT TOP (1)
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

