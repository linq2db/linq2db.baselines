BeforeExecute
-- SqlServer.2008

DROP TABLE [#TestTable]

BeforeExecute
-- SqlServer.2008

CREATE TABLE [#TestTable]
(
	[ID]        Int            NOT NULL,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(4000)     NULL,
	[CreatedOn] DateTime           NULL
)

BeforeExecute
-- SqlServer.2008

SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[#TestTable] [t1]

BeforeExecute
-- SqlServer.2008

DROP TABLE [#TestTable]

