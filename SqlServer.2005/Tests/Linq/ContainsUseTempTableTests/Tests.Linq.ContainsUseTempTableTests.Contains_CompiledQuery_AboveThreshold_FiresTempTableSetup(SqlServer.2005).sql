-- SqlServer.2005

CREATE TABLE [tempdb]..[#T_fc6010a83d3d]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_fc6010a83d3d](item)

-- SqlServer.2005

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_fc6010a83d3d] [t1]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#T_fc6010a83d3d]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#T_fc6010a83d3d]

