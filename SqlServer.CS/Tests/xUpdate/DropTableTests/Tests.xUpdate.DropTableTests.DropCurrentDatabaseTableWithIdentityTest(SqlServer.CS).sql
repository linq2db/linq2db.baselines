-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [DropTableTestID]

-- SqlServer.CS SqlServer.2025
CREATE TABLE [DropTableTestID]
(
	[ID]  Int  NOT NULL IDENTITY,
	[ID1] Int  NOT NULL,

	CONSTRAINT [PK_DropTableTestID] PRIMARY KEY CLUSTERED ([ID])
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [DropTableTestID]
(
	[ID1]
)
VALUES
(
	2
)

-- SqlServer.CS SqlServer.2025
SELECT
	[t].[ID],
	[t].[ID1]
FROM
	[DropTableTestID] [t]

-- SqlServer.CS SqlServer.2025
DROP TABLE [DropTableTestID]

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[ID],
	[t1].[ID1]
FROM
	[DropTableTestID] [t1]

