-- SqlServer.CS SqlServer.2025
UPDATE
	[TrimTestTable]
SET
	[Data] = N'***III***'
WHERE
	[TrimTestTable].[ID] = 3

-- SqlServer.CS SqlServer.2025
UPDATE
	[TrimTestTable]
SET
	[Data] = N'***OOO***'
WHERE
	[TrimTestTable].[Data] = N'***XXX***'

-- SqlServer.CS SqlServer.2025
UPDATE
	[TrimTestTable]
SET
	[Data] = N'***SSS***'
WHERE
	[TrimTestTable].[Data] = N'***HHH***'

-- SqlServer.CS SqlServer.2025
SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- SqlServer.CS SqlServer.2025
SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

