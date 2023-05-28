BeforeExecute
-- SqlCe

DROP TABLE [testparams]

BeforeExecute
-- SqlCe

CREATE TABLE [testparams]
(
	[Test-٣ᛯ౾-End] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @Test٣End Int -- Int32
SET     @Test٣End = 2

UPDATE
	[testparams]
SET
	[testparams].[Test-٣ᛯ౾-End] = @Test٣End
WHERE
	[testparams].[Test-٣ᛯ౾-End] = 1

BeforeExecute
-- SqlCe

DROP TABLE [testparams]

