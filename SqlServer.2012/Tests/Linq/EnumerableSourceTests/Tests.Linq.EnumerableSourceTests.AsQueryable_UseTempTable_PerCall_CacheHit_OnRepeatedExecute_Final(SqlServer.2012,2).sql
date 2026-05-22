-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_eb014d3c2099]
(
	[Id]   Int            NOT NULL,
	[Data] NVarChar(4000)     NULL
)

INSERT BULK [tempdb]..[#T_eb014d3c2099](Id, Data)

-- SqlServer.2012

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	[tempdb]..[#T_eb014d3c2099] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_eb014d3c2099]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_eb014d3c2099]

