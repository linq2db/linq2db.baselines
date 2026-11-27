-- SqlServer.2016.MS SqlServer.2016
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

-- SqlServer.2016.MS SqlServer.2016
DECLARE @p Int -- Int32
SET     @p = 5

SELECT TOP (2)
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] = @p

-- SqlServer.2016.MS SqlServer.2016
DECLARE @Id Int -- Int32
SET     @Id = 5

SELECT TOP (2)
	[t1].[ID]
FROM
	[ClientEvaluatedRecord] [t1]
WHERE
	[t1].[ID] = @Id

