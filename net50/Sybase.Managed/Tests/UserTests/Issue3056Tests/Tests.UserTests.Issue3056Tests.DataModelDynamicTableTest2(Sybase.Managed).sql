BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [dbo].[Table_3056]
(
	[Id]          Int          IDENTITY NOT NULL,
	[Name]        VarChar(100)              NULL,
	[Description] VarChar(500)              NULL,

	CONSTRAINT [PK_Table_3056] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [dbo].[Table_3056]
(
	[Name],
	[Description]
)
SELECT 'n1','d0' UNION ALL
SELECT 'n2','d00'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'dbo.Table_3056') IS NOT NULL)
	DROP TABLE [dbo].[Table_3056]

