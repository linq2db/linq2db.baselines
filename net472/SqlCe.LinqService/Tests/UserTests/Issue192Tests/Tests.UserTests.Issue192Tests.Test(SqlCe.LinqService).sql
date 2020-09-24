BeforeExecute
-- SqlCe

CREATE TABLE [TypeConvertTable]
(
	[Name]      NVarChar(50) NOT NULL,
	[BoolValue] NChar        NOT NULL,
	[GuidValue] NVarChar(50)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue NChar -- StringFixedLength
SET     @BoolValue = 'N'
DECLARE @GuidValue NVarChar(36) -- String
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
-- SqlCe
DECLARE @Name NVarChar(8) -- String
SET     @Name = 'Verified'
DECLARE @BoolValue NChar -- StringFixedLength
SET     @BoolValue = 'Y'
DECLARE @GuidValue NVarChar(36) -- String
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
-- SqlCe

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'N'

BeforeExecute
-- SqlCe

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = 'Y'

BeforeExecute
-- SqlCe
DECLARE @GuidValue NVarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	Count(*)
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_2 NChar -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_1 NChar -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_2 NChar -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_1 NChar -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_2 NChar -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_1 NChar -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_2 NChar -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_1 NChar -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_2 NChar -- StringFixedLength
SET     @BoolValue_2 = 'N'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_2

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @BoolValue_1 NChar -- StringFixedLength
SET     @BoolValue_1 = 'Y'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[BoolValue] = @BoolValue_1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @GuidValue_1 NVarChar(36) -- String
SET     @GuidValue_1 = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue_1

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @GuidValue_1 NVarChar(36) -- String
SET     @GuidValue_1 = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP (@take)
	[_].[Name],
	[_].[BoolValue],
	[_].[GuidValue]
FROM
	[TypeConvertTable] [_]
WHERE
	[_].[GuidValue] = @GuidValue_1

BeforeExecute
-- SqlCe

DROP TABLE [TypeConvertTable]

