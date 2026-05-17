-- SqlServer.2005

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	1,
	N'***OOO***'
)

-- SqlServer.2005

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	2,
	N'***HHH***'
)

-- SqlServer.2005

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	N'***VVV***'
)

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

