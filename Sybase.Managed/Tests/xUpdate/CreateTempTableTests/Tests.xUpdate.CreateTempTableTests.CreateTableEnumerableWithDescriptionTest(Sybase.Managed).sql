-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TempTable]
		(
			[Name] NVarChar(20) NOT NULL,

			CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([Name])
		)
	')

-- Sybase.Managed Sybase

INSERT INTO [TempTable]
(
	[Name]
)
SELECT 'John'

-- Sybase.Managed Sybase

SELECT
	[t].[Name]
FROM
	[Person] [p]
		INNER JOIN [TempTable] [t] ON [p].[FirstName] = [t].[Name]

-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TempTable') IS NOT NULL)
	DROP TABLE [TempTable]

