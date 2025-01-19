﻿BeforeExecute
-- SqlCe
DECLARE @Name NVarChar(11) -- String
SET     @Name = 'NotVerified'
DECLARE @BoolValue NVarChar -- String
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
DECLARE @BoolValue NVarChar -- String
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
	COUNT(*) as [COUNT_1]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

BeforeExecute
-- SqlCe

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

BeforeExecute
-- SqlCe
DECLARE @cond NVarChar(36) -- String
SET     @cond = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT
	COUNT(*) as [COUNT_1]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @cond

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'N'

BeforeExecute
-- SqlCe

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[BoolValue] = 'Y'

BeforeExecute
-- SqlCe
DECLARE @GuidValue NVarChar(36) -- String
SET     @GuidValue = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @GuidValue

BeforeExecute
-- SqlCe
DECLARE @GuidValue NVarChar(36) -- String
SET     @GuidValue = 'a948600d-de21-4f74-8ac2-9516b287076e'

SELECT TOP (1)
	[t1].[Name],
	[t1].[BoolValue],
	[t1].[GuidValue]
FROM
	[TypeConvertTable] [t1]
WHERE
	[t1].[GuidValue] = @GuidValue

