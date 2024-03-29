﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TypeConvertTable]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

IF (OBJECT_ID(N'[TypeConvertTable]', N'U') IS NULL)
	CREATE TABLE [TypeConvertTable]
	(
		[Name]      NVarChar(50) NOT NULL,
		[BoolValue] Char         NOT NULL,
		[GuidValue] VarChar(50)      NULL
	)

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
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

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'N'

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'Y'

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue Char(1) -- AnsiStringFixedLength
SET     @BoolValue = N'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @GuidValue VarChar(50) -- AnsiString
SET     @GuidValue = N'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [TypeConvertTable]

