BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[_p] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @p Int -- Int32
SET     @p = 2

UPDATE
	[testparams]
SET
	[_p] = @p
WHERE
	[testparams].[_p] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

