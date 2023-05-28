BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[p@$#_p] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @p@$#_p Int -- Int32
SET     @p@$#_p = 2

UPDATE
	[testparams]
SET
	[testparams].[p@$#_p] = @p@$#_p
WHERE
	[testparams].[p@$#_p] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

