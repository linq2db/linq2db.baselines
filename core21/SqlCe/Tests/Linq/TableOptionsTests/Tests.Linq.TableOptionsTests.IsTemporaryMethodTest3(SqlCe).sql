﻿BeforeExecute
-- SqlCe

DROP TABLE [TestTable]

BeforeExecute
-- SqlCe

CREATE TABLE [TestTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	[t1].[Id],
	[t1].[Value],
	[t2].[Id],
	[t2].[Value],
	[t3].[Id],
	[t3].[Value]
FROM
	[TestTable] [t1]
		CROSS JOIN [TestTable] [t2]
		INNER JOIN [TestTable] [t3] ON [t2].[Id] = [t3].[Id]
WHERE
	[t1].[Id] = [t2].[Id]

BeforeExecute
-- SqlCe

DROP TABLE [TestTable]

