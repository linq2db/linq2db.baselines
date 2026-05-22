-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_2d1a53421f25]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_2d1a53421f25](item)

-- SqlServer.2008

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_2d1a53421f25] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_2d1a53421f25]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_2d1a53421f25]

