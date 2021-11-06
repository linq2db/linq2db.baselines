﻿BeforeExecute
-- SqlServer.Contained SqlServer.2017

CREATE TABLE [TestTable]
(
	[Id]     Int             NOT NULL IDENTITY,
	[Field1] Int                 NULL,
	[Field2] NVarChar(4000)      NULL,
	[Field3] Int                 NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DELETE FROM [TestTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2017

DROP TABLE IF EXISTS [TestTable]

