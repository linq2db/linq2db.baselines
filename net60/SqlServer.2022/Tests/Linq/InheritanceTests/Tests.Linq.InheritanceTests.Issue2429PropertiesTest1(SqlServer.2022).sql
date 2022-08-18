BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [BaseTable]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[BaseTable]', N'U') IS NULL)
	CREATE TABLE [BaseTable]
	(
		[Value] Int NOT NULL,
		[Id]    Int NOT NULL,

		CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
VALUES
(100,1)

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1

BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[x].[Value],
	[x].[Id]
FROM
	[BaseTable] [x]
WHERE
	[x].[Id] = 1 AND [x].[Value] = 100

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [BaseTable]

