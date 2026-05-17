-- SqlCe

SELECT TOP (2)
	[t1].[Id]
FROM
	[TransactionLine] [t1]
WHERE
	[t1].[Id] = 2

-- SqlCe

SELECT TOP (2)
	[t1].[Id]
FROM
	[TransactionLine] [t1]
WHERE
	[t1].[Id] = 2

-- SqlCe
DECLARE @UserId Int -- Int32
SET     @UserId = 2

SELECT TOP (2)
	[x].[Id] as [UserId]
FROM
	[TransactionLine] [x]
WHERE
	[x].[Id] = @UserId

-- SqlCe
DECLARE @UserId Int -- Int32
SET     @UserId = 2

SELECT TOP (2)
	[x].[Id]
FROM
	[TransactionLine] [x]
WHERE
	[x].[Id] = @UserId

