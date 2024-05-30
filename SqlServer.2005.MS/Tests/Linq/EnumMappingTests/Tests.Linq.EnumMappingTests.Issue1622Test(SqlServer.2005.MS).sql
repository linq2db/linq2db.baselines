BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1622Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1622Table]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1622Table]', N'U') IS NULL)
	CREATE TABLE [Issue1622Table]
	(
		[Id]       Int            NOT NULL,
		[SomeText] NVarChar(4000)     NULL,

		CONSTRAINT [PK_Issue1622Table] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SomeText NVarChar(4000) -- String
SET     @SomeText = N'Value1_suffix'

INSERT INTO [Issue1622Table]
(
	[Id],
	[SomeText]
)
VALUES
(
	@Id,
	@SomeText
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[e].[Id],
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[SomeText] = 'Value1_suffix'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (2)
	[e].[Id],
	[e].[SomeText]
FROM
	[Issue1622Table] [e]
WHERE
	[e].[Id] = 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue1622Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue1622Table]

