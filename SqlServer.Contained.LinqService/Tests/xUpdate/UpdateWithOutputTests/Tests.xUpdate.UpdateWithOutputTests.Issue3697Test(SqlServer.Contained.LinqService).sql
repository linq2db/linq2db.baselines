BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

INSERT INTO [Test3697] DEFAULT VALUES

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

UPDATE
	[a_Items]
SET
	[a_Items].[Value] = 1
OUTPUT
	INSERTED.[Id]
FROM
	[Test3697] [a]
		INNER JOIN [Test3697Item] [a_Items] ON [a].[Id] = [a_Items].[TestId]

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)

UPDATE
	[b]
SET
	[b].[Value] = 1
OUTPUT
	INSERTED.[Id]
FROM
	[Test3697] [a]
		INNER JOIN [Test3697Item] [b] ON [a].[Id] = [b].[TestId]

