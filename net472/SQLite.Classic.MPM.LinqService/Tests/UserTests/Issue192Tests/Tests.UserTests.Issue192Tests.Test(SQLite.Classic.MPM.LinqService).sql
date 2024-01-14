BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TypeConvertTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TypeConvertTable]
(
	[Name]      NVarChar(50) NOT NULL,
	[BoolValue] Char         NOT NULL,
	[GuidValue] VarChar(50)      NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Name NVarChar(11) -- String
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
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Name NVarChar(8) -- String
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
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'N'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'Y'

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'N'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] <> @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'N'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] <> @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'N'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'N'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'Y'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] <> @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @BoolValue Char -- AnsiStringFixedLength
SET     @BoolValue = 'N'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] <> @BoolValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @GuidValue VarChar(36) -- AnsiString
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue
LIMIT 1

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TypeConvertTable]

