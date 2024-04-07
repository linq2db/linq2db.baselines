BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1110TB]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue1110TB]', N'U') IS NULL)
	CREATE TABLE [Issue1110TB]
	(
		[Id]        Int       NOT NULL,
		[TimeStamp] DateTime2 NOT NULL,

		CONSTRAINT [PK_Issue1110TB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @TimeStamp DateTime2
SET     @TimeStamp = DATETIME2FROMPARTS(2020, 2, 29, 17, 54, 55, 1231234, 7)

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
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1110TB]

