-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TestTable]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [TestTable]
(
	[ID]        Int            NOT NULL IDENTITY,
	[Field1]    NVarChar(50)       NULL,
	[Field2]    NVarChar(255)      NULL,
	[CreatedOn] DATETIME           NULL,

	CONSTRAINT [PK_TestTable] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Field1],
	[t1].[Field2],
	[t1].[CreatedOn]
FROM
	[TestTable] [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [TestTable]

