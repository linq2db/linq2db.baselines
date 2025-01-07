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

INSERT INTO [Issue4160Person]
(
	[Code]
)
SELECT 'SD' UNION ALL
SELECT 'SD' UNION ALL
SELECT 'SH'

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

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
SELECT 'SD','SYDNEY' UNION ALL
SELECT 'SD','SUNDAY' UNION ALL
SELECT 'SH','SYDHIP'

BeforeExecute
-- SqlCe

SELECT DISTINCT
	[cc_1].[Name]
FROM
	[Issue4160Person] [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name]
			FROM
				[Issue4160City] [cc]
			WHERE
				[cc].[Code] = [t1].[Code] OR [cc].[Code] IS NULL AND [t1].[Code] IS NULL
		) [cc_1]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4160City]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4160Person]

