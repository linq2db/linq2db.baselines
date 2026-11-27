-- SqlServer.2005.MS SqlServer.2005
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

-- SqlServer.2005.MS SqlServer.2005
SELECT TOP (2)
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] IN (4, 5, 6)

