BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [TestTable]
(
	[ID]        Int             NOT NULL IDENTITY,
	[Field1]    NVarChar(50)        NULL,
	[Field2]    NVarChar(4000)      NULL,
	[CreatedOn] DateTime2           NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

DROP TABLE [TestTable]

