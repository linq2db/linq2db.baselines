-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = '***III***'
WHERE
	[t1].[ID] = 3

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = '***OOO***'
WHERE
	[t].[Data] = '***XXX***'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = '***SSS***'
WHERE
	[t].[Data] = '***HHH***'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

