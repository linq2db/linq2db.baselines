BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3472TableDC') IS NOT NULL)
	DROP TABLE [Issue3472TableDC]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3472TableDC') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue3472TableDC]
		(
			[Id] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue3472TableDC]
(
	[Id]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[Id],
	(
		SELECT
			COUNT(*)
		FROM
			[Person] [p]
		WHERE
			[p].[PersonID] = [t1].[Id]
	)
FROM
	[Issue3472TableDC] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue3472TableDC') IS NOT NULL)
	DROP TABLE [Issue3472TableDC]

