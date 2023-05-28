BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[Test-Имя] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @TestИмя Int -- Int32
SET     @TestИмя = 2

UPDATE
	[testparams]
SET
	[testparams].[Test-Имя] = @TestИмя
WHERE
	[testparams].[Test-Имя] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

