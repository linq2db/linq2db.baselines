BeforeExecute
-- SqlCe

DROP TABLE [DisTable]

BeforeExecute
-- SqlCe

CREATE TABLE [DisTable]
(
	[DisTypeID] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [JurTable]

BeforeExecute
-- SqlCe

CREATE TABLE [JurTable]
(
	[JurCode] NVarChar(2) NOT NULL,

	CONSTRAINT [PK_JurTable] PRIMARY KEY ([JurCode])
)

BeforeExecute
-- SqlCe

DROP TABLE [DisTypeTable]

BeforeExecute
-- SqlCe

CREATE TABLE [DisTypeTable]
(
	[DisTypeID] Int          NOT NULL,
	[JurCode]   NVarChar(50) NOT NULL,

	CONSTRAINT [PK_DisTypeTable] PRIMARY KEY ([DisTypeID])
)

BeforeExecute
-- SqlCe

SELECT
	[d].[DisTypeID]
FROM
	[DisTable] [d]
		INNER JOIN [DisTypeTable] [a_DisType] ON CASE
			WHEN [d].[DisTypeID] = 1 THEN 1
			WHEN [d].[DisTypeID] = 2 THEN 2
			WHEN [d].[DisTypeID] = 4 THEN 4
			WHEN [d].[DisTypeID] = 5 THEN 5
		END = [a_DisType].[DisTypeID] AND CASE
			WHEN [d].[DisTypeID] = 1 THEN 1
			WHEN [d].[DisTypeID] = 2 THEN 2
			WHEN [d].[DisTypeID] = 4 THEN 4
			WHEN [d].[DisTypeID] = 5 THEN 5
		END IS NOT NULL
		INNER JOIN [JurTable] [j] ON [a_DisType].[JurCode] = [j].[JurCode]

BeforeExecute
-- SqlCe

DROP TABLE [DisTypeTable]

BeforeExecute
-- SqlCe

DROP TABLE [JurTable]

BeforeExecute
-- SqlCe

DROP TABLE [DisTable]

