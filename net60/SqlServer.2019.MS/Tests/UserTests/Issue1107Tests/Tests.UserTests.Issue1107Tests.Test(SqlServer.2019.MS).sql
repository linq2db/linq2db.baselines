BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1107TB]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Issue1107TB]', N'U') IS NULL)
	CREATE TABLE [Issue1107TB]
	(
		[Id]       Int       NOT NULL,
		[TestDate] DateTime2 NOT NULL,

		CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
	)

BeforeExecute
INSERT BULK [Issue1107TB](Id, TestDate)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue1107TB]

