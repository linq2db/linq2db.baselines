-- SqlServer.CS SqlServer.2025
SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [QualifiedNameTable2]

-- SqlServer.CS SqlServer.2025
CREATE TABLE [TestDataCS]..[QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [QualifiedNameTable2]

