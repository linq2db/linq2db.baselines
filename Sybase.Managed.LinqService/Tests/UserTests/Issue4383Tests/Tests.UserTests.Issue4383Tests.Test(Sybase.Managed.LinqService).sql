BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINES') IS NOT NULL)
	DROP TABLE [PUMPLINES]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINES') IS NULL)
	EXECUTE('
		CREATE TABLE [PUMPLINES]
		(
			[LINE_ID] Int NOT NULL,

			CONSTRAINT [PK_PUMPLINES] PRIMARY KEY CLUSTERED ([LINE_ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 1

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 2

INSERT INTO [PUMPLINES]
(
	[LINE_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINE_CHAINS') IS NOT NULL)
	DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINE_CHAINS') IS NULL)
	EXECUTE('
		CREATE TABLE [PUMPLINE_CHAINS]
		(
			[LINE_ID]  Int NOT NULL,
			[CHAIN_ID] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @LineId Integer -- Int32
SET     @LineId = 1
DECLARE @ChainId Integer -- Int32
SET     @ChainId = 11

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(
	@LineId,
	@ChainId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @LineId Integer -- Int32
SET     @LineId = 2
DECLARE @ChainId Integer -- Int32
SET     @ChainId = 22

INSERT INTO [PUMPLINE_CHAINS]
(
	[LINE_ID],
	[CHAIN_ID]
)
VALUES
(
	@LineId,
	@ChainId
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINS') IS NOT NULL)
	DROP TABLE [CHAINS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINS') IS NULL)
	EXECUTE('
		CREATE TABLE [CHAINS]
		(
			[CHAIN_ID] Int NOT NULL,

			CONSTRAINT [PK_CHAINS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 11

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Id Integer -- Int32
SET     @Id = 22

INSERT INTO [CHAINS]
(
	[CHAIN_ID]
)
VALUES
(
	@Id
)

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINPOINTS') IS NOT NULL)
	DROP TABLE [CHAINPOINTS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINPOINTS') IS NULL)
	EXECUTE('
		CREATE TABLE [CHAINPOINTS]
		(
			[CHAIN_ID] Int NOT NULL,

			CONSTRAINT [PK_CHAINPOINTS] PRIMARY KEY CLUSTERED ([CHAIN_ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ElementId Integer -- Int32
SET     @ElementId = 11

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
VALUES
(
	@ElementId
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @ElementId Integer -- Int32
SET     @ElementId = 22

INSERT INTO [CHAINPOINTS]
(
	[CHAIN_ID]
)
VALUES
(
	@ElementId
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[Id],
	[m_1].[Id_1],
	[d_1].[CHAIN_ID]
FROM
	(
		SELECT DISTINCT
			[a_Chain].[CHAIN_ID] as [Id],
			[t2].[Id] as [Id_1]
		FROM
			(
				SELECT DISTINCT
					[t1].[LINE_ID] as [Id]
				FROM
					[PUMPLINES] [t1]
			) [t2]
				INNER JOIN [PUMPLINE_CHAINS] [d] ON [t2].[Id] = [d].[LINE_ID]
				LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
	) [m_1]
		INNER JOIN [CHAINPOINTS] [d_1] ON [m_1].[Id] = [d_1].[CHAIN_ID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[m_1].[LINE_ID],
	[d].[LINE_ID],
	[d].[CHAIN_ID],
	[a_Chain].[CHAIN_ID],
	[a_Chain].[CHAIN_ID]
FROM
	[PUMPLINES] [m_1]
		INNER JOIN [PUMPLINE_CHAINS] [d] ON [m_1].[LINE_ID] = [d].[LINE_ID]
		LEFT JOIN [CHAINS] [a_Chain] ON [d].[CHAIN_ID] = [a_Chain].[CHAIN_ID]
ORDER BY
	[m_1].[LINE_ID]

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	[t1].[LINE_ID],
	[t1].[LINE_ID]
FROM
	[PUMPLINES] [t1]
ORDER BY
	[t1].[LINE_ID]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINPOINTS') IS NOT NULL)
	DROP TABLE [CHAINPOINTS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'CHAINS') IS NOT NULL)
	DROP TABLE [CHAINS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINE_CHAINS') IS NOT NULL)
	DROP TABLE [PUMPLINE_CHAINS]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'PUMPLINES') IS NOT NULL)
	DROP TABLE [PUMPLINES]

