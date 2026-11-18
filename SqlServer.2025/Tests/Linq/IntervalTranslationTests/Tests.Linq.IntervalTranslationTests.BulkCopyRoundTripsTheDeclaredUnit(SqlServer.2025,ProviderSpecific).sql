INSERT BULK [DurationRow](Id, InSeconds, InTicks, Undeclared, UndeclaredSeconds)

-- SqlServer.2025
SELECT TOP (2)
	[t1].[Id],
	[t1].[InSeconds],
	[t1].[InTicks],
	[t1].[Undeclared],
	[t1].[UndeclaredSeconds]
FROM
	[DurationRow] [t1]

