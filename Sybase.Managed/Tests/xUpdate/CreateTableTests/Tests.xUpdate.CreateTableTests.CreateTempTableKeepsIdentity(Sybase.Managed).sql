-- Sybase.Managed Sybase
CREATE TABLE #TempIdentityRowTMP
(
	[Id]    Int IDENTITY NOT NULL,
	[Value] Int          NOT NULL,

	CONSTRAINT [PK_TempIdentityRowTMP] PRIMARY KEY CLUSTERED ([Id])
)

-- Sybase.Managed Sybase
INSERT INTO [TempIdentityRow]
(
	[Value]
)
VALUES
(
	1
)

-- Sybase.Managed Sybase
INSERT INTO #TempIdentityRowTMP
(
	[Value]
)
VALUES
(
	2
)

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	[TempIdentityRow] [t1]

-- Sybase.Managed Sybase
SELECT TOP 2
	[t1].[Id],
	[t1].[Value]
FROM
	#TempIdentityRowTMP [t1]

-- Sybase.Managed Sybase
IF (OBJECT_ID(N'#TempIdentityRowTMP') IS NOT NULL)
	DROP TABLE #TempIdentityRowTMP

