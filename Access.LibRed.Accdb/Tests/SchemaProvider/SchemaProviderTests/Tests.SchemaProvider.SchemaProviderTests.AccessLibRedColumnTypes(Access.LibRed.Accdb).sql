-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP VIEW [LibRedSchemaTypesOuter]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP VIEW [LibRedSchemaTypesInner]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP VIEW [LibRedSchemaTypesPlain]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [LibRedSchemaTypes]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [LibRedSchemaTypes] ([Id] INT, [Big] BIGINT, [Stamp] DATETIME2, [Flag] BIT NULL)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE VIEW [LibRedSchemaTypesOuter] AS SELECT [t].[Flag] FROM [LibRedSchemaTypes] [s] LEFT JOIN [LibRedSchemaTypes] [t] ON [s].[Id] = [t].[Big]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE VIEW [LibRedSchemaTypesInner] AS SELECT [t].[Flag] FROM [LibRedSchemaTypes] [s] INNER JOIN [LibRedSchemaTypes] [t] ON [s].[Id] = [t].[Big]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE VIEW [LibRedSchemaTypesPlain] AS SELECT [Flag] FROM [LibRedSchemaTypes]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP VIEW [LibRedSchemaTypesOuter]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP VIEW [LibRedSchemaTypesInner]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP VIEW [LibRedSchemaTypesPlain]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [LibRedSchemaTypes]

