-- SqlServer.2014.MS SqlServer.2014
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

-- SqlServer.2014.MS SqlServer.2014
SELECT TOP (2)
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] IN (4, 5, 6)

