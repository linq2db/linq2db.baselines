-- SqlServer.2014

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***III***'
WHERE
	[TrimTestTable].[ID] = 3

-- SqlServer.2014

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***OOO***'
WHERE
	[TrimTestTable].[Data] = N'***XXX***'

-- SqlServer.2014

UPDATE
	[TrimTestTable]
SET
	[Data] = N'***SSS***'
WHERE
	[TrimTestTable].[Data] = N'***HHH***'

-- SqlServer.2014

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- SqlServer.2014

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

