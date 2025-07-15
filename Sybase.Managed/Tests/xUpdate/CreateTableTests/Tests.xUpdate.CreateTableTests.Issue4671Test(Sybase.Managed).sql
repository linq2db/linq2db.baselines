BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE #Issue4671EntityTMP
(
	[Id]    Int IDENTITY NOT NULL,
	[Value] Int          NOT NULL,

	CONSTRAINT [PK_Issue4671EntityTMP] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [Issue4671Entity]
(
	[Value]
)
VALUES
(
	1
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO #Issue4671EntityTMP
(
	[Value]
)
VALUES
(
	2
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[Issue4671Entity] [t1]

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	#Issue4671EntityTMP [t1]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'#Issue4671EntityTMP') IS NOT NULL)
	DROP TABLE #Issue4671EntityTMP

