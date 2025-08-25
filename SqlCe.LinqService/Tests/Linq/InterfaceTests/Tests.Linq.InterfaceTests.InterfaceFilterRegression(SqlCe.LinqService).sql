BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (2)
	[t1].[Id]
FROM
	[TransactionLine] [t1]
WHERE
	[t1].[Id] = 2

BeforeExecute
-- SqlCe (asynchronously)

SELECT TOP (2)
	[t1].[Id]
FROM
	[TransactionLine] [t1]
WHERE
	[t1].[Id] = 2

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @UserId Int -- Int32
SET     @UserId = 2

SELECT TOP (2)
	[x].[Id] as [UserId]
FROM
	[TransactionLine] [x]
WHERE
	[x].[Id] = @UserId

BeforeExecute
-- SqlCe (asynchronously)
DECLARE @UserId Int -- Int32
SET     @UserId = 2

SELECT TOP (2)
	[x].[Id]
FROM
	[TransactionLine] [x]
WHERE
	[x].[Id] = @UserId

