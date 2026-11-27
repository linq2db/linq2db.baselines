-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO [ClientEvaluatedRecord]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @Item1  -- Int32
SET     @Item1 = 5

SELECT TOP 2
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] = @Item1

