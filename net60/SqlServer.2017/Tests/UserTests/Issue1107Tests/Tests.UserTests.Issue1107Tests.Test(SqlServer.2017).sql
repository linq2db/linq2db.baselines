﻿BeforeExecute
-- SqlServer.2017

CREATE TABLE [Issue1107TB]
(
	[Id]       Int       NOT NULL,
	[TestDate] DateTime2 NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
INSERT BULK [Issue1107TB](Id, TestDate)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [Issue1107TB]

