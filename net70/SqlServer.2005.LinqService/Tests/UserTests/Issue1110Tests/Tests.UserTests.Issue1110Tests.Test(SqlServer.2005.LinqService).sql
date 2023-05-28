BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1110TB]', N'U') IS NOT NULL)
	DROP TABLE [Issue1110TB]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1110TB]', N'U') IS NULL)
	CREATE TABLE [Issue1110TB]
	(
		[Id]        Int      NOT NULL,
		[TimeStamp] DateTime NOT NULL,

		CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp DateTime
SET     @TimeStamp = CAST('2020-02-29T17:54:55.123' AS DATETIME)

INSERT INTO [Issue1110TB]
(
	[Id],
	[TimeStamp]
)
VALUES
(
	@Id,
	@TimeStamp
)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue1110TB]', N'U') IS NOT NULL)
	DROP TABLE [Issue1110TB]

