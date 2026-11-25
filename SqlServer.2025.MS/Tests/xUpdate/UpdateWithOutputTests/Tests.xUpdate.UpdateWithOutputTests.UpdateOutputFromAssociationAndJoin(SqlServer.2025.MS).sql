-- SqlServer.2025.MS SqlServer.2025
INSERT INTO [UpdateOutputOwner] DEFAULT VALUES

-- SqlServer.2025.MS SqlServer.2025
UPDATE
	[a_Items]
SET
	[a_Items].[Value] = 1
OUTPUT
	INSERTED.[Id]
FROM
	[UpdateOutputOwner] [a]
		INNER JOIN [UpdateOutputItem] [a_Items] ON [a].[Id] = [a_Items].[TestId]

-- SqlServer.2025.MS SqlServer.2025
UPDATE
	[b]
SET
	[b].[Value] = 1
OUTPUT
	INSERTED.[Id]
FROM
	[UpdateOutputOwner] [a]
		INNER JOIN [UpdateOutputItem] [b] ON [a].[Id] = [b].[TestId]

