-- SqlServer.2016
DECLARE @Has Bit -- Boolean
SET     @Has = 1

INSERT INTO [Issue1438]
(
	[Has]
)
VALUES
(
	@Has
)

SELECT SCOPE_IDENTITY()

-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 1

SELECT TOP (2)
	[t1].[Id],
	[t1].[Has]
FROM
	[Issue1438] [t1]
WHERE
	[t1].[Id] = @id

