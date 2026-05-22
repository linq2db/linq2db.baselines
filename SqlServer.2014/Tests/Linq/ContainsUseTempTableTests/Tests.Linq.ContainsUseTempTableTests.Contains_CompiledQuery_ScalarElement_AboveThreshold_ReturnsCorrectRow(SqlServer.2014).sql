-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_ed41149dbad7]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_ed41149dbad7](item)

-- SqlServer.2014

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_ed41149dbad7] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_ed41149dbad7]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_ed41149dbad7]

