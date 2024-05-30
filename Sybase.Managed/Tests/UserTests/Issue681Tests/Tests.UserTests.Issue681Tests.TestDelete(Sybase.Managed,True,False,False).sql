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
DECLARE @ID Integer -- Int32
SET     @ID = 5

DELETE FROM [Issue681Table]
FROM
	[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NOT NULL)
	DROP TABLE [Issue681Table]

