-- SqlServer.2005.MS SqlServer.2005
INSERT INTO [UpdateOutputOwner] DEFAULT VALUES

-- SqlServer.2005.MS SqlServer.2005
UPDATE
	[a_Items]
SET
	[a_Items].[Value] = 1
OUTPUT
	INSERTED.[Id]
FROM
	[UpdateOutputOwner] [a]
		INNER JOIN [UpdateOutputItem] [a_Items] ON [a].[Id] = [a_Items].[TestId]

-- SqlServer.2005.MS SqlServer.2005
UPDATE
	[b]
SET
	[b].[Value] = 1
OUTPUT
	INSERTED.[Id]
FROM
	[UpdateOutputOwner] [a]
		INNER JOIN [UpdateOutputItem] [b] ON [a].[Id] = [b].[TestId]

