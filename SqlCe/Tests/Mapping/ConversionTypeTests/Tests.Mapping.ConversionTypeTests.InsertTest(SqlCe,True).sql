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

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	2,
	'***HHH***'
)

-- SqlCe

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	'***VVV***'
)

-- SqlCe

SELECT
	[r].[ID],
	[r].[Data] as [Data_1]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- SqlCe

SELECT
	[r].[ID],
	[r].[Data] as [Data_1]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

