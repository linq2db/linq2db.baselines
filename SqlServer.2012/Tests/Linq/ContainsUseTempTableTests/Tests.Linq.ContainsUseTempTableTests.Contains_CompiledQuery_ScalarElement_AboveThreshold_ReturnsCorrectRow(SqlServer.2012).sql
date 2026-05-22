-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_19fa27842bee]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_19fa27842bee](item)

-- SqlServer.2012

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_19fa27842bee] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_19fa27842bee]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_19fa27842bee]

