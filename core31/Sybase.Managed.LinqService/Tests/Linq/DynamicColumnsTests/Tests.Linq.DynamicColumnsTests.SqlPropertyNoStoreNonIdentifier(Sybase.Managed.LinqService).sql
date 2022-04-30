BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicTable') IS NOT NULL)
	DROP TABLE [DynamicTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicTable') IS NULL)
	EXECUTE('
		CREATE TABLE [DynamicTable]
		(
			[ID]             Int IDENTITY NOT NULL,
			[Not Identifier] Int          NOT NULL,
			[Some Value]     Int          NOT NULL,

			CONSTRAINT [PK_DynamicTable] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @NotIdentifier Integer -- Int32
SET     @NotIdentifier = 77
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 0

INSERT INTO [DynamicTable]
(
	[Not Identifier],
	[Some Value]
)
VALUES
(
	@NotIdentifier,
	@Value_1
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[d].[Not Identifier]
FROM
	[DynamicTable] [d]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'DynamicTable') IS NOT NULL)
	DROP TABLE [DynamicTable]

