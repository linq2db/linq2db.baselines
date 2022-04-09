﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InstanceClass]', N'U') IS NOT NULL)
	DROP TABLE [InstanceClass]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InstanceClass]', N'U') IS NULL)
	CREATE TABLE [InstanceClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

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
-- SqlServer.2005.MS SqlServer.2005

SELECT
	Count(*)
FROM
	[InstanceClass] [t]
WHERE
	Convert(NVarChar(11), [t].[Id]) + Convert(NVarChar(11), [t].[Value]) = Convert(NVarChar(11), [t].[Id]) + Convert(VarChar(11), [t].[Value])

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[InstanceClass]', N'U') IS NOT NULL)
	DROP TABLE [InstanceClass]

