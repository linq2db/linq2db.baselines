BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TempTable]
		(
			[Name] NVarChar(20) NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [TempTable]
(
	[Name]
)
SELECT 'John'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

