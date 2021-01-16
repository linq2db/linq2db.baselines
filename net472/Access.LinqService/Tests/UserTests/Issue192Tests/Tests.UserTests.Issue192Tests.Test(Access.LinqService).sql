BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TypeConvertTable]
(
	[Name]      NVarChar(50) NOT NULL,
	[BoolValue] Char         NOT NULL,
	[GuidValue] VarChar(50)      NULL
)

BeforeExecute
-- Access AccessOleDb
DECLARE @Name VarWChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
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
-- Access AccessOleDb
DECLARE @Name VarWChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
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
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'N'

BeforeExecute
-- Access AccessOleDb

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'Y'

BeforeExecute
-- Access AccessOleDb
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue_1 Char(1) -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue_1 Char(1) -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue_1 Char(1) -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue_1 Char(1) -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue_1 Char(1) -- AnsiStringFixedLength
SET     @BoolValue_1 = 'N'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- Access AccessOleDb
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- Access AccessOleDb
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- Access AccessOleDb
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP 1
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TypeConvertTable]

