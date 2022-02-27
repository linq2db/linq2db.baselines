﻿BeforeExecute
-- SqlServer.2014

CREATE TABLE [Issue1107TB]
(
	[Id]       Int      NOT NULL,
	[TestDate] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
INSERT BULK [Issue1107TB](Id, TestDate)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[Issue1107TB]', N'U') IS NOT NULL)
	DROP TABLE [Issue1107TB]

