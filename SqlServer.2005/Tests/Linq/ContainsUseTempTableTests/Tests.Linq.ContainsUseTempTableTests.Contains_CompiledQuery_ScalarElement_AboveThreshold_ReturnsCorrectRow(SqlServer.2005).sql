-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_e80238dd00e0]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_e80238dd00e0](item)

-- SqlServer.2005

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_e80238dd00e0] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_e80238dd00e0]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_e80238dd00e0]

