-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_00116abc3f48]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_00116abc3f48](item)

-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_00116abc3f48] [t1]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_00116abc3f48]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_00116abc3f48]

