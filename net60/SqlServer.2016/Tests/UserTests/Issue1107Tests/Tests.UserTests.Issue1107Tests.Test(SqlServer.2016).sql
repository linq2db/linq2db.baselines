BeforeExecute
-- SqlServer.2016

CREATE TABLE [Issue1107TB]
(
	[Id]       Int      NOT NULL,
	[TestDate] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
INSERT BULK [Issue1107TB](Id, TestDate)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [Issue1107TB]

