BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1316Tests') IS NOT NULL)
	DROP TABLE [Issue1316Tests]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1316Tests') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1316Tests]
		(
			[ID] Int NOT NULL,

			CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Item1 Integer -- Int32
SET     @Item1 = 5

SELECT TOP 2
	[_].[ID]
FROM
	[Issue1316Tests] [_]
WHERE
	[_].[ID] = @Item1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1316Tests') IS NOT NULL)
	DROP TABLE [Issue1316Tests]

