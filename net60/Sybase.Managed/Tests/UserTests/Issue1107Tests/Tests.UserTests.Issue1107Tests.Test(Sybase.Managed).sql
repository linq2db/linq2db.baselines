BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1107TB') IS NOT NULL)
	DROP TABLE [Issue1107TB]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1107TB') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1107TB]
		(
			[Id]       Int      NOT NULL,
			[TestDate] DateTime NOT NULL,

			CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue1107TB]
(
	[Id],
	[TestDate]
)
SELECT 0,'2018-01-01'

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1107TB') IS NOT NULL)
	DROP TABLE [Issue1107TB]

