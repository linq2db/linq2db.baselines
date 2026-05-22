-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_25fc36739d73]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_25fc36739d73](item)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_25fc36739d73] [t1]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_25fc36739d73]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_25fc36739d73]

