BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'testparams') IS NOT NULL)
	DROP TABLE [testparams]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'testparams') IS NULL)
	EXECUTE('
		CREATE TABLE [testparams]
		(
			[from] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @from Integer -- Int32
SET     @from = 2

UPDATE
	[testparams]
SET
	[t].[from] = @from
FROM
	[testparams] [t]
WHERE
	[t].[from] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'testparams') IS NOT NULL)
	DROP TABLE [testparams]

