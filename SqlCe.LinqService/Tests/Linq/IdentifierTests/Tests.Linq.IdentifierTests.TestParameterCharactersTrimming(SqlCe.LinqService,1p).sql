BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[1p] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[1p] = @p
WHERE
	[testparams].[1p] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

