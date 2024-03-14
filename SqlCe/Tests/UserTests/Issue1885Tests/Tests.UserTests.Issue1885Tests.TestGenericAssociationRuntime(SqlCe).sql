﻿BeforeExecute
-- SqlCe

DROP TABLE [User]

BeforeExecute
-- SqlCe

CREATE TABLE [User]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlCe

INSERT INTO [User]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[not_null],
	[t1].[Data_1]
FROM
	[User] [t]
		LEFT JOIN (
			SELECT
				[a_Data].[Data] as [Data_1],
				1 as [not_null]
			FROM
				(
					SELECT 'Testing' AS Data
				) [a_Data]
		) [t1] ON [t].[Id] = [t].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [User]

