-- SqlServer.2005

IF (OBJECT_ID(N'[TestTable]', N'U') IS NOT NULL)
	DROP TABLE [TestTable]

-- SqlServer.2005

CREATE TABLE [TestTable]
(
	[ID]        Int             NOT NULL IDENTITY,
	[Field1]    NVarChar(50)        NULL,
	[Field2]    NVarChar(4000)      NULL,
	[CreatedOn] DateTime            NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.2005

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

-- SqlServer.2005

DROP TABLE [TestTable]

