BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[Test-Name] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @TestName Int -- Int32
SET     @TestName = 2

UPDATE
	[testparams]
SET
	[Test-Name] = @TestName
WHERE
	[testparams].[Test-Name] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

