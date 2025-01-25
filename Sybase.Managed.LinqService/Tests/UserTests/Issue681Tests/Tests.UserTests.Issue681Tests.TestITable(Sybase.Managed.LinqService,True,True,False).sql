BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NOT NULL)
	DROP TABLE [Issue681Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue681Table]
		(
			[ID]    Int NOT NULL,
			[Value] Int NOT NULL,

			CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	@@SERVERNAME

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 1
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[TestDataCore]..[Issue681Table] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NOT NULL)
	DROP TABLE [Issue681Table]

