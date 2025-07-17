BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	N'one',
	N'two',
	N'text'
)

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id],
	[r].[FistName] + N' ' + [r].[LastName]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- SqlServer.2025.MS SqlServer.2025 SqlServer.2022

SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	[r_1].[FistName] + N' ' + [r_1].[LastName]
FROM
	[Issue3323Table] [r_1]

