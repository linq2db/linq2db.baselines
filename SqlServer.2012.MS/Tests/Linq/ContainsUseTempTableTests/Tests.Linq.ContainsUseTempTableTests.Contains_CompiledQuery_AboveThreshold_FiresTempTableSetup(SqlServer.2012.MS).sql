-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#T_06706238a339]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_06706238a339](item)

-- SqlServer.2012.MS SqlServer.2012

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_06706238a339] [t1]

-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#T_06706238a339]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_06706238a339]

