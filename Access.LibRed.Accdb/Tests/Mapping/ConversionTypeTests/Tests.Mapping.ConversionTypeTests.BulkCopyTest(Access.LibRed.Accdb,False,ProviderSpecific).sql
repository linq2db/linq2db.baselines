-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(9) -- String
SET     @Data = '***OOO***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

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

