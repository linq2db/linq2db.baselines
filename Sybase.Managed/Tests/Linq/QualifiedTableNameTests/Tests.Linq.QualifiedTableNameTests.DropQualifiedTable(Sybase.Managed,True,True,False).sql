-- Sybase.Managed Sybase
SELECT
	@@SERVERNAME

-- Sybase.Managed Sybase
SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
IF (OBJECT_ID(N'QualifiedNameTable2') IS NOT NULL)
	DROP TABLE [QualifiedNameTable2]

-- Sybase.Managed Sybase
CREATE TABLE [QualifiedNameTable2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_QualifiedNameTable2] PRIMARY KEY CLUSTERED ([ID])
)

-- Sybase.Managed Sybase
DROP TABLE [TestDataCore]..[QualifiedNameTable2]

