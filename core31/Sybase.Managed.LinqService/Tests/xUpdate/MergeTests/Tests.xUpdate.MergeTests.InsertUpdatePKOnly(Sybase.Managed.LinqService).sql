BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PKOnlyTable') IS NOT NULL)
	DROP TABLE [PKOnlyTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PKOnlyTable') IS NULL)
	EXECUTE('
		CREATE TABLE [PKOnlyTable]
		(
			[ID] Int NOT NULL,

			CONSTRAINT [PK_PKOnlyTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO [PKOnlyTable]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- Sybase.Managed Sybase

MERGE INTO [PKOnlyTable] [Target]
USING
(
	SELECT 1 AS [ID]
	UNION ALL
	SELECT 2
	UNION ALL
	SELECT 3) [Source]
(
	[ID]
)
ON ([Target].[ID] = [Source].[ID])

WHEN NOT MATCHED THEN
INSERT
(
	[ID]
)
VALUES
(
	[Source].[ID]
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[ID]
FROM
	[PKOnlyTable] [t1]
ORDER BY
	[t1].[ID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PKOnlyTable') IS NOT NULL)
	DROP TABLE [PKOnlyTable]

