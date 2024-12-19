BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [WhereWithString]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[WhereWithString]', N'U') IS NULL)
	CREATE TABLE [WhereWithString]
	(
		[Id]          Int            NOT NULL,
		[StringValue] NVarChar(4000)     NULL,

		CONSTRAINT [PK_WhereWithString] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2016

INSERT INTO [WhereWithString]
(
	[Id],
	[StringValue]
)
VALUES
(1,N'Str1')

BeforeExecute
-- SqlServer.2016

SELECT
	[x].[Id],
	[x].[StringValue]
FROM
	[WhereWithString] [x]
WHERE
	[x].[StringValue] LIKE N'%Str%' ESCAPE N'~' AND [x].[StringValue] IS NOT NULL

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [WhereWithString]

