-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Name VarWChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO [TypeConvertTable]
(
	[Id],
	[Name],
	[BoolValue],
	[GuidValue]
)
VALUES
(
	@Id,
	@Name,
	@BoolValue,
	@GuidValue
)

-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO [TypeConvertTable]
(
	[Id],
	[Name],
	[BoolValue],
	[GuidValue]
)
VALUES
(
	@Id,
	@Name,
	@BoolValue,
	@GuidValue
)

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- Access.Jet.OleDb AccessOleDb

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- Access.Jet.OleDb AccessOleDb
DECLARE @cond VarChar(36) -- AnsiString
SET     @cond = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @cond

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- Access.Jet.OleDb AccessOleDb

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- Access.Jet.OleDb AccessOleDb
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @GuidValue

-- Access.Jet.OleDb AccessOleDb
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP 1
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @GuidValue

