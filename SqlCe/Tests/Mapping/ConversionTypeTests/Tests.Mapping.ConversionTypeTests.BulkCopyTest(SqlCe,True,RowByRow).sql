-- SqlCe
INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	1,
	'***OOO***'
)

-- SqlCe
SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- SqlCe
SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

