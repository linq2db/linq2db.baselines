-- SQLite.MS SQLite
DECLARE @first NVarChar(255) -- String
SET     @first = '10:00:00.1234567'
DECLARE @second NVarChar(255) -- String
SET     @second = '10:00:00.1234568'

INSERT INTO [TimeOnlyContainsRow] ([Id], [Value]) VALUES (1, @first), (2, @second)

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 10:00

SELECT
	[r].[Id]
FROM
	[TimeOnlyContainsRow] [r]
WHERE
	[r].[Value] IN (@value)

-- SQLite.MS SQLite
DECLARE @value  -- Time
SET     @value = 10:00

SELECT
	[r].[Id]
FROM
	[TimeOnlyContainsRow] [r]
WHERE
	[r].[Value] NOT IN (@value)

-- SQLite.MS SQLite
SELECT
	[r].[Id]
FROM
	[TimeOnlyContainsRow] [r]
WHERE
	[r].[Value] IN (
		SELECT
			[r_1].[Value]
		FROM
			[TimeOnlyContainsRow] [r_1]
		WHERE
			[r_1].[Id] = 1
	)

