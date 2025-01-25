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
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5

UPDATE
	[Issue681Table]
SET
	[Value] = @Value
WHERE
	[Issue681Table].[ID] = @ID

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NOT NULL)
	DROP TABLE [Issue681Table]

