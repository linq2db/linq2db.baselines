-- SqlServer.2008
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [ClientEvaluatedRecord]
(
	[ID]
)
VALUES
(
	@ID
)

-- SqlServer.2008
DECLARE @Item1 Int -- Int32
SET     @Item1 = 5

SELECT TOP (2)
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] = @Item1

