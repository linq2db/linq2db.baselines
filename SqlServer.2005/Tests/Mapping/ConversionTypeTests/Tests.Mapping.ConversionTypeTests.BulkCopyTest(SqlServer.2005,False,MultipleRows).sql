-- SqlServer.2005

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
SELECT 1,N'***OOO***'

-- SqlServer.2005

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- SqlServer.2005

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

