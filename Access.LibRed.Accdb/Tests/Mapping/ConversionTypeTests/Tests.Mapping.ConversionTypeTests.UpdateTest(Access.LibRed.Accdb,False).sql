-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID  -- Int32
SET     @ID = 3

UPDATE
	[TrimTestTable] [t1]
SET
	[t1].[Data] = @Data
WHERE
	[t1].[ID] = @ID

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = @Data
WHERE
	[t].[Data] = '***XXX***'

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p NVarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	[TrimTestTable] [t]
SET
	[t].[Data] = @Data
WHERE
	[t].[Data] = @p

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

