-- SqlServer.2022
DELETE [t1]
FROM
	[Issue4646Table] [t1]



-- SqlServer.2022
DECLARE @Value Int -- Int32
SET     @Value = NULL
DECLARE @ValueN Int -- Int32
SET     @ValueN = NULL

INSERT INTO [Issue4646Table]
(
	[Value],
	[ValueN]
)
VALUES
(
	@Value,
	@ValueN
)



-- SqlServer.2022
SELECT TOP (2)
	[t1].[Id],
	[t1].[Value],
	[t1].[ValueN]
FROM
	[Issue4646Table] [t1]



