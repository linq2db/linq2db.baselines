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
	[t1].[cond],
	[t1].[Value_1]
FROM
	[User] [t]
		LEFT JOIN (
			SELECT
				[a_Data].[Data] as [Value_1],
				1 as [cond]
			FROM
				(
					SELECT 'Testing' AS Data
				) [a_Data]
		) [t1] ON 1=1

BeforeExecute
-- SqlCe

DROP TABLE [User]

