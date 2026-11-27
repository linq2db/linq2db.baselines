-- Sybase.Managed Sybase
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO [ClientEvaluatedRecord]
(
	[ID]
)
VALUES
(
	@ID
)

-- Sybase.Managed Sybase
DECLARE @p Integer -- Int32
SET     @p = 5

SELECT TOP 2
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] = @p

