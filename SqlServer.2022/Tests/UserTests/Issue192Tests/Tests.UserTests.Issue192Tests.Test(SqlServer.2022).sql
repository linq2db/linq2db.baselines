-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(50) -- String
SET     @Name = N'NotVerified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'N'
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

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

-- SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(50) -- String
SET     @Name = N'Verified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'Y'
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'a948600d-de21-4f74-8ac2-9516b287076e'

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

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.2022

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.2022
DECLARE @cond VarChar(50) -- AnsiString
SET     @cond = N'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @cond

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.2022

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.2022
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @GuidValue

-- SqlServer.2022
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP (1)
	[t1].[Id],
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @GuidValue

