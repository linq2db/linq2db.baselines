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
SELECT TOP 2
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] IN (4, 5, 6)

