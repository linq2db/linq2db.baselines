-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_131704010abc]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_131704010abc](item)

-- SqlServer.2005

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_131704010abc] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_131704010abc]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_131704010abc]

