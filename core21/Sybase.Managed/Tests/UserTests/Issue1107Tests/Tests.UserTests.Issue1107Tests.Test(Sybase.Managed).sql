BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [Issue1107TB]
(
	[Id]       Int      NOT NULL,
	[TestDate] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY CLUSTERED ([Id])
)

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

DROP TABLE [Issue1107TB]

