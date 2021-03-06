﻿BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[BaseTable]', N'U') IS NOT NULL)
	DROP TABLE [BaseTable]

BeforeExecute
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[BaseTable]', N'U') IS NULL)
	CREATE TABLE [BaseTable]
	(
		[Value] Int NOT NULL,
		[Id]    Int NOT NULL,

		CONSTRAINT [PK_BaseTable] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
DECLARE @BaseValue Int -- Int32
SET     @BaseValue = 100
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
VALUES
(
	@BaseValue,
	@Id
)

BeforeExecute
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012
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
-- SqlServer.2014 SqlServer.2012

IF (OBJECT_ID(N'[BaseTable]', N'U') IS NOT NULL)
	DROP TABLE [BaseTable]

