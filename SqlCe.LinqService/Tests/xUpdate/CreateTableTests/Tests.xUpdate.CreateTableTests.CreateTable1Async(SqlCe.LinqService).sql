BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [TestTable]

BeforeExecute
-- SqlCe (asynchronously)

CREATE TABLE [TestTable]
(
	[ID]        Int            NOT NULL IDENTITY,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(255)      NULL,
	[CreatedOn] DateTime           NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe (asynchronously)

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- SqlCe (asynchronously)

DROP TABLE [TestTable]

