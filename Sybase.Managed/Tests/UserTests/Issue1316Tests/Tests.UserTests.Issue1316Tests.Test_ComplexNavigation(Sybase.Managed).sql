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
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT TOP 2
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = @p

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 5

SELECT TOP 2
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] = @Id

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1316Tests') IS NOT NULL)
	DROP TABLE [Issue1316Tests]

