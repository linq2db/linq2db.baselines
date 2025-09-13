BeforeExecute
-- SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[DisposableTable]', N'U') IS NULL)
	CREATE TABLE [DisposableTable]
	(
		[ID] Int NOT NULL,

		CONSTRAINT [PK_DisposableTable] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [DisposableTable]

