BeforeExecute
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
	[_].[Id]
FROM
	[TestEqualsTable1] [_]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TestEqualsTable2] [__]
		WHERE
			[__].[Id] = @param AND [_].[Id] = [__].[FK]
	)

BeforeExecute
-- SqlCe

DROP TABLE [TestEqualsTable2]

BeforeExecute
-- SqlCe

DROP TABLE [TestEqualsTable1]

