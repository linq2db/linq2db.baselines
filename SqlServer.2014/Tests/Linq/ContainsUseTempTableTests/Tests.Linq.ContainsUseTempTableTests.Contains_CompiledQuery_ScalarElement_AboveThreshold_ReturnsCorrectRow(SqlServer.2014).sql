-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_d7833ec1a238]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_d7833ec1a238](item)

-- SqlServer.2014

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_d7833ec1a238] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_d7833ec1a238]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_d7833ec1a238]

