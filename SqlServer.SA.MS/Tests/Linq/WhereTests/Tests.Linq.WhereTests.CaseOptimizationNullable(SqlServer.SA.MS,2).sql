﻿BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [WhereWithString]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[WhereWithString]', N'U') IS NULL)
	CREATE TABLE [WhereWithString]
	(
		[Id]          Int            NOT NULL,
		[StringValue] NVarChar(4000)     NULL,

		CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(1,N'Str1')

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @filterValue Int -- Int32
SET     @filterValue = 2

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	([x].[Id] = @filterValue)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [WhereWithString]

