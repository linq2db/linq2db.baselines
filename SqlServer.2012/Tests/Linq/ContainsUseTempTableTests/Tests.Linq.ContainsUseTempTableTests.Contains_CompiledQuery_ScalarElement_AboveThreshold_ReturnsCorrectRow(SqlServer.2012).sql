-- SqlServer.2012

CREATE TABLE [tempdb]..[#T_276f5edc3c1c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_276f5edc3c1c](item)

-- SqlServer.2012

SELECT TOP (1)
	[t1].[item]
FROM
	[tempdb]..[#T_276f5edc3c1c] [t1]
ORDER BY
	[t1].[item]

-- SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_276f5edc3c1c]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_276f5edc3c1c]

