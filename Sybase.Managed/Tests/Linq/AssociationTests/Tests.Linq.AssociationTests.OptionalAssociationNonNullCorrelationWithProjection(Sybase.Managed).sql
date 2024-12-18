BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1') IS NOT NULL)
	DROP TABLE [Table1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1') IS NULL)
	EXECUTE('
		CREATE TABLE [Table1]
		(
			[ID]  Int NOT NULL,
			[ID2] Int     NULL,

			CONSTRAINT [PK_Table1] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Table1]
(
	[ID],
	[ID2]
)
SELECT 1,1 UNION ALL
SELECT 2,2

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table2') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table2') IS NULL)
	EXECUTE('
		CREATE TABLE [Table2]
		(
			[ID]  Int NOT NULL,
			[ID3] Int     NULL,

			CONSTRAINT [PK_Table2] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Table2]
(
	[ID],
	[ID3]
)
SELECT 1,1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table3') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table3') IS NULL)
	EXECUTE('
		CREATE TABLE [Table3]
		(
			[ID] Int NOT NULL,

			CONSTRAINT [PK_Table3] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Table3]
(
	[ID]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table4') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table4') IS NULL)
	EXECUTE('
		CREATE TABLE [Table4]
		(
			[ID]  Int NOT NULL,
			[ID3] Int     NULL,

			CONSTRAINT [PK_Table4] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Table4]
(
	[ID],
	[ID3]
)
SELECT 1,1 UNION ALL
SELECT 2,NULL

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[a_Table2].[ID],
	[a_Table2].[ID3],
	[a_Table3].[ID]
FROM
	[Table1] [r]
		LEFT JOIN [Table2] [a_Table2] ON [r].[ID2] = [a_Table2].[ID] AND [r].[ID2] IS NOT NULL
		LEFT JOIN [Table3] [a_Table3] ON [a_Table2].[ID3] = [a_Table3].[ID] AND [a_Table2].[ID3] IS NOT NULL
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[Table4] [id]
		WHERE
			[a_Table3].[ID] = [id].[ID3] AND [id].[ID3] IS NOT NULL AND
			[id].[ID] = [r].[ID]
	)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table4') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table3') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table2') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Table1') IS NOT NULL)
	DROP TABLE [Table1]

