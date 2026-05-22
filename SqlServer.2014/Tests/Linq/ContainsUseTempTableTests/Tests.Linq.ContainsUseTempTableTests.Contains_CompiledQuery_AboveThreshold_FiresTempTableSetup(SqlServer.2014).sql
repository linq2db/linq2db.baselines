-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_b044e3e3b528]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_b044e3e3b528](item)

-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_b044e3e3b528] [t1]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_b044e3e3b528]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_b044e3e3b528]

