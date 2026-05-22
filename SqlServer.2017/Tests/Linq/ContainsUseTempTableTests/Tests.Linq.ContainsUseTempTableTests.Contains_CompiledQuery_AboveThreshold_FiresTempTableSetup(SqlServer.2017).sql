-- SqlServer.2017

CREATE TABLE [tempdb]..[#T_eadaf3519d62]
(
	[item] Int NOT NULL
)

INSERT BULK [tempdb]..[#T_eadaf3519d62](item)

-- SqlServer.2017

SELECT
	COUNT(*)
FROM
	[tempdb]..[#T_eadaf3519d62] [t1]

-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#T_eadaf3519d62]

