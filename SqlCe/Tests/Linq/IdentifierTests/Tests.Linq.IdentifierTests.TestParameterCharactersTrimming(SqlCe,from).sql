BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[from] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @from Int -- Int32
SET     @from = 2

UPDATE
	[testparams]
SET
	[from] = @from
WHERE
	[testparams].[from] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

