BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[WhereWithString]', N'U') IS NOT NULL)
	DROP TABLE [WhereWithString]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[WhereWithString]', N'U') IS NULL)
	CREATE TABLE [WhereWithString]
	(
		[Id]          Int            NOT NULL,
		[StringValue] NVarChar(4000)     NULL,

		CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2014

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(1,N'Str1')

BeforeExecute
-- SqlServer.2014

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE N'%Str%' ESCAPE N'~' AND [x].[StringValue] IS NOT NULL

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[WhereWithString]', N'U') IS NOT NULL)
	DROP TABLE [WhereWithString]

