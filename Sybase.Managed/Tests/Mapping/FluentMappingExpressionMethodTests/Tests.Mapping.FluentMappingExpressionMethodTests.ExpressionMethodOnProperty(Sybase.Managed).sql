BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InstanceClass') IS NOT NULL)
	DROP TABLE [InstanceClass]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InstanceClass') IS NULL)
	EXECUTE('
		CREATE TABLE [InstanceClass]
		(
			[Id]    Int NOT NULL,
			[Value] Int NOT NULL
		)
	')

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
SELECT 1,101 UNION ALL
SELECT 2,102 UNION ALL
SELECT 3,103 UNION ALL
SELECT 4,104 UNION ALL
SELECT 5,105 UNION ALL
SELECT 6,106 UNION ALL
SELECT 7,107 UNION ALL
SELECT 8,108 UNION ALL
SELECT 9,109 UNION ALL
SELECT 10,110 UNION ALL
SELECT 11,111 UNION ALL
SELECT 12,112 UNION ALL
SELECT 13,113 UNION ALL
SELECT 14,114 UNION ALL
SELECT 15,115 UNION ALL
SELECT 16,116 UNION ALL
SELECT 17,117 UNION ALL
SELECT 18,118 UNION ALL
SELECT 19,119 UNION ALL
SELECT 20,120

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS NVarChar(11)) = CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS VarChar(11))

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'InstanceClass') IS NOT NULL)
	DROP TABLE [InstanceClass]

