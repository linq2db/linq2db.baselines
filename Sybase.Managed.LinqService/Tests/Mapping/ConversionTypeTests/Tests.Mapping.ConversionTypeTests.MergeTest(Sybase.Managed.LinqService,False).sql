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
SET     @Data = '***XXX***'

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
DECLARE @ID Integer -- Int32
SET     @ID = 3
DECLARE @Data UniVarChar(9) -- String
SET     @Data = '***VVV***'

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

MERGE INTO [TrimTestTable] [Target]
USING (
	SELECT 1 AS [ID], '***OOO***' AS [Data_1]
	UNION ALL
	SELECT 2, '***SSS***') [Source]
(
	[ID],
	[Data_1]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[Data] = [Source].[Data_1]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Data]
)
VALUES
(
	[Source].[ID],
	[Source].[Data_1]
)

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [TrimTestTable] [Target]
USING (
	SELECT 3 AS [ID], '***III***' AS [Data_1]) [Source]
(
	[ID],
	[Data_1]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Target].[Data] = [Source].[Data_1]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Data]
)
VALUES
(
	[Source].[ID],
	[Source].[Data_1]
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

