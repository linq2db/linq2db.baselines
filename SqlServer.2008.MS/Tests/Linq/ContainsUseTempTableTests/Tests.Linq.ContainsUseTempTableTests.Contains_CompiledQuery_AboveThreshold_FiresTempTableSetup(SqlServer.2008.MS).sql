-- SqlServer.2008.MS SqlServer.2008

CREATE TABLE [tempdb]..[#T_bc2fc0536535]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_bc2fc0536535](item)

-- SqlServer.2008.MS SqlServer.2008

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_bc2fc0536535] [t1]

-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#T_bc2fc0536535]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_bc2fc0536535]

