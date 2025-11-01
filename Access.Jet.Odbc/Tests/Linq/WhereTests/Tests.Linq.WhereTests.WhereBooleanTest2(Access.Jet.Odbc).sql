-- Access.Jet.Odbc AccessODBC

SELECT
	[t1].[Id],
	[t1].[BoolValue],
	[t1].[NullableBoolValue]
FROM
	[WhereCases] [t1]

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND [t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = True AND [t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = True AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = True AND [t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = True AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = False AND [t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = False AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[BoolValue] = False AND [t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[BoolValue] = False AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = True AND [t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = True AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	[t].[NullableBoolValue] = True AND [t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT ([t].[NullableBoolValue] = True AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL) AND
	[t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL) AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL)) AND
	[t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT (NOT [t].[BoolValue] AND ([t].[NullableBoolValue] = False OR [t].[NullableBoolValue] IS NULL)) AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT [t].[BoolValue] AND [t].[NullableBoolValue] = False AND
	[t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = False AND [t].[NullableBoolValue] IS NOT NULL AND [t].[Id] > 0)

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = False AND [t].[NullableBoolValue] IS NOT NULL) AND
	[t].[Id] > 0

-- Access.Jet.Odbc AccessODBC

SELECT
	[t].[Id],
	[t].[BoolValue],
	[t].[NullableBoolValue]
FROM
	[WhereCases] [t]
WHERE
	NOT (NOT (NOT [t].[BoolValue] AND [t].[NullableBoolValue] = False AND [t].[NullableBoolValue] IS NOT NULL) AND [t].[Id] > 0)

