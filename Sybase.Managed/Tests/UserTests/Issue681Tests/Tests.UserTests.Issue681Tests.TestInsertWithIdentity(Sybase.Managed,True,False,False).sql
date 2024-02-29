BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table4') IS NOT NULL)
	DROP TABLE [Issue681Table4]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table4') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue681Table4]
		(
			[ID]    Int IDENTITY NOT NULL,
			[Value] Int          NOT NULL,

			CONSTRAINT [PK_Issue681Table4] PRIMARY KEY CLUSTERED ([ID])
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

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT @@IDENTITY

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table4') IS NOT NULL)
	DROP TABLE [Issue681Table4]

