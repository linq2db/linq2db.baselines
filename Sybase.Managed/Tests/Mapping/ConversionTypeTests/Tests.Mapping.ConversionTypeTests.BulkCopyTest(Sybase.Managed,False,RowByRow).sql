BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TrimTestTable') IS NOT NULL)
	DROP TABLE [TrimTestTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TrimTestTable') IS NULL)
	EXECUTE('
		CREATE TABLE [TrimTestTable]
		(
			[ID]   Int          NOT NULL,
			[Data] NVarChar(50)     NULL,

			CONSTRAINT [PK_TrimTestTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 1
DECLARE @Data UniVarChar(9) -- String
SET     @Data = '***OOO***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'TrimTestTable') IS NOT NULL)
	DROP TABLE [TrimTestTable]

