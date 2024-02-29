BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TestTable') IS NOT NULL)
	DROP TABLE [TestTable]

BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TestTable]
(
	[ID]        Int           IDENTITY NOT NULL,
	[Field1]    NVarChar(50)               NULL,
	[Field2]    NVarChar(255)              NULL,
	[CreatedOn] DateTime                   NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TestTable]

