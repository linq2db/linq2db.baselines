BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[Test-葛󠄀城市-End] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Test葛城市End Int -- Int32
SET     @Test葛城市End = 2

UPDATE
	[testparams]
SET
	[testparams].[Test-葛󠄀城市-End] = @Test葛城市End
WHERE
	[testparams].[Test-葛󠄀城市-End] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

