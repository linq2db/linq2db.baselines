BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT
	@@SERVERNAME

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

IF (OBJECT_ID(N'Issue681Table2') IS NOT NULL)
	DROP TABLE [Issue681Table2]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE [Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [TestDataCore]..[Issue681Table2]

