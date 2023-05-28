BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[p$_.@#p] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @p$_@#p Int -- Int32
SET     @p$_@#p = 2

UPDATE
	[testparams]
SET
	[testparams].[p$_.@#p] = @p$_@#p
WHERE
	[testparams].[p$_.@#p] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

