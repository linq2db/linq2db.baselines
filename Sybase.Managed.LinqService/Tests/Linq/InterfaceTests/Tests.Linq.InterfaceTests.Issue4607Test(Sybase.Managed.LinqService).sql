BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SomeTable') IS NOT NULL)
	DROP TABLE [SomeTable]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SomeTable') IS NULL)
	EXECUTE('
		CREATE TABLE [SomeTable]
		(
			[ClassProp] Bit NOT NULL,
			[Interface] Bit NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [SomeTable]
(
	[ClassProp],
	[Interface]
)
VALUES
(
	1,
	0
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SomeTable') IS NOT NULL)
	DROP TABLE [SomeTable]

