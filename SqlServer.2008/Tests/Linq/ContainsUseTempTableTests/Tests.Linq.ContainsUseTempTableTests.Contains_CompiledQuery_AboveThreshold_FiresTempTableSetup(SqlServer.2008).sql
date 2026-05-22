-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_884724dabbb5]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_884724dabbb5](item)

-- SqlServer.2008

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_884724dabbb5] [t1]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_884724dabbb5]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_884724dabbb5]

