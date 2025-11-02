-- SqlServer.SA.MS SqlServer.2019
DECLARE @Name NVarChar(50) -- String
SET     @Name = N'NotVerified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'N'
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

INSERT INTO [TypeConvertTable]
(
	[Name],
	[BoolValue],
	[GuidValue]
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

-- SqlServer.SA.MS SqlServer.2019
DECLARE @Name NVarChar(50) -- String
SET     @Name = N'Verified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'Y'
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'a948600d-de21-4f74-8ac2-9516b287076e'

INSERT INTO [TypeConvertTable]
(
	[Name],
	[BoolValue],
	[GuidValue]
)
VALUES
(
	@Name,
	@BoolValue,
	@GuidValue
)

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.SA.MS SqlServer.2019

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.SA.MS SqlServer.2019
DECLARE @cond VarChar(50) -- AnsiString
SET     @cond = N'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*)
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @cond

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

-- SqlServer.SA.MS SqlServer.2019

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

-- SqlServer.SA.MS SqlServer.2019
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @GuidValue

-- SqlServer.SA.MS SqlServer.2019
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @GuidValue

