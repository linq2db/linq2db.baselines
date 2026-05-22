-- SqlServer.2008

CREATE TABLE [tempdb]..[#T_af68c4abc3f0]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_af68c4abc3f0](item)

-- SqlServer.2008

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_af68c4abc3f0] [t1]

-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_af68c4abc3f0]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_af68c4abc3f0]

