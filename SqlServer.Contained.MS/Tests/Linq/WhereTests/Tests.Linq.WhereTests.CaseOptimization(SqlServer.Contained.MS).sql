BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [WhereWithString]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[WhereWithString]', N'U') IS NULL)
	CREATE TABLE [WhereWithString]
	(
		[Id]          Int            NOT NULL,
		[StringValue] NVarChar(4000)     NULL,

		CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(1,N'Str1')

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE N'%Str%' ESCAPE N'~' AND [x].[StringValue] IS NOT NULL

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [WhereWithString]

