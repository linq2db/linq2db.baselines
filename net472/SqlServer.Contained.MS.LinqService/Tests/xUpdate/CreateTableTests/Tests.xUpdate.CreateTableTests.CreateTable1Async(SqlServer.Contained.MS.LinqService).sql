﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TestTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [TestTable]
(
	[ID]        Int             NOT NULL IDENTITY,
	[Field1]    NVarChar(50)        NULL,
	[Field2]    NVarChar(4000)      NULL,
	[CreatedOn] DateTime            NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE [TestTable]

