BeforeExecute
-- Access AccessOleDb (asynchronously)

DROP TABLE [TestTable]

BeforeExecute
-- Access AccessOleDb (asynchronously)

CREATE TABLE [TestTable]
(
	[ID]        Int            NOT NULL IDENTITY,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(255)      NULL,
	[CreatedOn] DateTime           NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Access AccessOleDb (asynchronously)

SELECT 
	[t1].[ID], 
	[t1].[Field1], 
	[t1].[Field2], 
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- Access AccessOleDb (asynchronously)

DROP TABLE [TestTable]

