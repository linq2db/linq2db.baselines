BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ValueItem') IS NOT NULL)
	DROP TABLE [ValueItem]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ValueItem') IS NULL)
	EXECUTE('
		CREATE TABLE [ValueItem]
		(
			[Value] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [ValueItem]
(
	[Value]
)
VALUES
(
	123
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[row_1].[Value]
FROM
	[ValueItem] [row_1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'ValueItem') IS NOT NULL)
	DROP TABLE [ValueItem]

