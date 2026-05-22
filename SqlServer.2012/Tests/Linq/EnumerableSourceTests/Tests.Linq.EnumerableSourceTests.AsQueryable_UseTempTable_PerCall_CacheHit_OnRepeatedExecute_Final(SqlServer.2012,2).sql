-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_0ecb3d0731ab]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_0ecb3d0731ab](Id, Data)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_0ecb3d0731ab] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_0ecb3d0731ab]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_0ecb3d0731ab]

