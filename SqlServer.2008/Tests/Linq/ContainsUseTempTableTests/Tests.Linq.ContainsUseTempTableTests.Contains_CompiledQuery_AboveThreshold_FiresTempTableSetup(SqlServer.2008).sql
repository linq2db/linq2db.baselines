-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_a5c554577e31]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a5c554577e31](item)

-- SqlServer.2008

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_a5c554577e31] [t1]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_a5c554577e31]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_a5c554577e31]

