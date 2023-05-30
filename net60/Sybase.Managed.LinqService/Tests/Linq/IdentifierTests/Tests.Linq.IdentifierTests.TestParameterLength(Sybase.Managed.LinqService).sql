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
			[col1]    Int NOT NULL,
			[Column1] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @A123456789b123456789c12345 Integer -- Int32
SET     @A123456789b123456789c12345 = 2

UPDATE
	[testparams]
SET
	[t].[col1] = @A123456789b123456789c12345
FROM
	[testparams] [t]
WHERE
	[t].[Column1] = 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'testparams') IS NOT NULL)
	DROP TABLE [testparams]

