BeforeExecute
-- SqlCe

DROP TABLE [Issue4160Person]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4160Person]
(
	[Code] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SH'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue4160City]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4160City]
(
	[Code] NVarChar(255)     NULL,
	[Name] NVarChar(255)     NULL
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SYDNEY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SD'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SUNDAY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SqlCe
DECLARE @Code NVarChar(2) -- String
SET     @Code = 'SH'
DECLARE @Name NVarChar(6) -- String
SET     @Name = 'SYDHIP'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SqlCe

SELECT DISTINCT
	[t1].[Value_1]
FROM
	[Issue4160Person] [pe]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name] as [Value_1]
			FROM
				[Issue4160City] [cc]
			WHERE
				[cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL
		) [t1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4160City]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4160Person]

