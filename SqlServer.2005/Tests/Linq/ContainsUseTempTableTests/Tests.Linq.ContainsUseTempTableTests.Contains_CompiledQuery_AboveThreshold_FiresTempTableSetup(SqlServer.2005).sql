-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_a0282926da29]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_a0282926da29](item)

-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_a0282926da29] [t1]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_a0282926da29]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_a0282926da29]

