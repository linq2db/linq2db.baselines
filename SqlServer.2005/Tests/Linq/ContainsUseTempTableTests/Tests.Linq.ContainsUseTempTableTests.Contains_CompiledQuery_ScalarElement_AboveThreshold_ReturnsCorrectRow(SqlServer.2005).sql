-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_9366bffa831d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_9366bffa831d](item)

-- SqlServer.2005

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_9366bffa831d] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_9366bffa831d]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_9366bffa831d]

