-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_f21e40087467]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_f21e40087467](item)

-- SqlServer.2012

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_f21e40087467] [t1]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_f21e40087467]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_f21e40087467]

