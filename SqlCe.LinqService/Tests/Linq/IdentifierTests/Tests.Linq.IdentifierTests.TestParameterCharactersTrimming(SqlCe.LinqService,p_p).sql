BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[p_p] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @p_p Int -- Int32
SET     @p_p = 2

UPDATE
	[testparams]
SET
	[p_p] = @p_p
WHERE
	[testparams].[p_p] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

