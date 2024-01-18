﻿BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]

BeforeExecute
-- SqlServer.2008

CREATE TABLE [TestTable]
(
	[Field1]    NVarChar(50)        NULL,
	[ID]        Int             NOT NULL IDENTITY,
	[Field2]    NVarChar(4000)      NULL,
	[CreatedOn] DateTime2           NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[Field1],
	[t1].[ID],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [TestTable]

