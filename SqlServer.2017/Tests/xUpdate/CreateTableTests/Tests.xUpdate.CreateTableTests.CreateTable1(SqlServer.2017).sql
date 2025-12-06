-- SqlServer.2017

DROP TABLE IF EXISTS [TestTable]

-- SqlServer.2017

CREATE TABLE [TestTable]
(
	[ID]        Int             NOT NULL IDENTITY,
	[Field1]    NVarChar(50)        NULL,
	[Field2]    NVarChar(4000)      NULL,
	[CreatedOn] DateTime2           NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2017

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

-- SqlServer.2017

DROP TABLE [TestTable]

