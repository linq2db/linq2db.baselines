BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[TestИмя] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Test Int -- Int32
SET     @Test = 2

UPDATE
	[testparams]
SET
	[TestИмя] = @Test
WHERE
	[testparams].[TestИмя] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

