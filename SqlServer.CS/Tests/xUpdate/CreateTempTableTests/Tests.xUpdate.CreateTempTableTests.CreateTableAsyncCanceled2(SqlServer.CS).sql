-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [TempTable]

-- SqlServer.CS SqlServer.2025
CREATE TABLE [tempdb]..[#TempTable]
(
	[ID] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [tempdb]..[#TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [tempdb]..[#TempTable]

-- SqlServer.CS SqlServer.2025
DROP TABLE [TempTable]

