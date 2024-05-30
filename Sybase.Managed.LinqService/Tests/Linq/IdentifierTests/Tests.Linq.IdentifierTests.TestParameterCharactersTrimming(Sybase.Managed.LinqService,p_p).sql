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
			[p_p] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @p_p Integer -- Int32
SET     @p_p = 2

UPDATE
	[testparams]
SET
	[p_p] = @p_p
WHERE
	[testparams].[p_p] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'testparams') IS NOT NULL)
	DROP TABLE [testparams]

