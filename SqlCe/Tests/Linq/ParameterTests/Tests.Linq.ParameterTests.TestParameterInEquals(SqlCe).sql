﻿BeforeExecute
-- SqlCe

DROP TABLE [TestEqualsTable1]

BeforeExecute
-- SqlCe

CREATE TABLE [TestEqualsTable1]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- SqlCe

CREATE TABLE [TestEqualsTable2]
(
	[Id] Int NOT NULL,
	[FK] Int     NULL
)

BeforeExecute
-- SqlCe
DECLARE @param Int -- Int32
SET     @param = 0

SELECT
	[t1].[Id]
FROM
	[TestEqualsTable1] [t1]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [t2]
		WHERE
			[t1].[Id] = [t2].[FK] AND [t2].[Id] = @param
	)

BeforeExecute
-- SqlCe

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- SqlCe

DROP TABLE [TestEqualsTable1]

