-- SqlServer.2014

CREATE TABLE [tempdb]..[#T_8b79f386a63c]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_8b79f386a63c](item)

-- SqlServer.2014

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_8b79f386a63c] [t1]

-- SqlServer.2014

IF (OBJECT_ID(N'[tempdb]..[#T_8b79f386a63c]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_8b79f386a63c]

