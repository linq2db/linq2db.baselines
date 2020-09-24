BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [TypeConvertTable]
(
	[Name]      NVarChar(50) NOT NULL,
	[BoolValue] Char         NOT NULL,
	[GuidValue] VarChar(50)      NULL
)

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

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

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Name UniVarChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

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

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'N'

BeforeExecute
-- Sybase.Managed Sybase

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'Y'

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_2 Char -- AnsiStringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @BoolValue_1 Char -- AnsiStringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @GuidValue_1 VarChar(36) -- AnsiString
SET     @GuidValue_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue_1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @GuidValue_1 VarChar(36) -- AnsiString
SET     @GuidValue_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue_1

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TypeConvertTable]

