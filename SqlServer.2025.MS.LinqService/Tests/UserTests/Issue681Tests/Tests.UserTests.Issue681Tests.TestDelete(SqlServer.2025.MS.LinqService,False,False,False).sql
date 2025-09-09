BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022 (asynchronously)
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE [t1]
FROM
	[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

