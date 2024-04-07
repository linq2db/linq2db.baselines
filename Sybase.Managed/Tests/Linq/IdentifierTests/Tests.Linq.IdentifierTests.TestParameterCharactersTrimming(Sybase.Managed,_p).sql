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
			[_p] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[t].[_p] = @p
FROM
	[testparams] [t]
WHERE
	[t].[_p] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'testparams') IS NOT NULL)
	DROP TABLE [testparams]

