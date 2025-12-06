-- SqlCe

UPDATE
	[TrimTestTable]
SET
	[Data] = '***III***'
WHERE
	[TrimTestTable].[ID] = 3

-- SqlCe

UPDATE
	[TrimTestTable]
SET
	[Data] = '***OOO***'
WHERE
	[TrimTestTable].[Data] = '***XXX***'

-- SqlCe

UPDATE
	[TrimTestTable]
SET
	[Data] = '***SSS***'
WHERE
	[TrimTestTable].[Data] = '***HHH***'

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

