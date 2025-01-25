BeforeExecute
-- SqlCe

DROP TABLE [Issue1316Tests]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1316Tests]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_Issue1316Tests] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [Issue1316Tests]
(
	[ID]
)
VALUES
(
	@ID
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[ID]
FROM
	[Issue1316Tests] [t1]
WHERE
	[t1].[ID] IN (4, 5, 6)

BeforeExecute
-- SqlCe

DROP TABLE [Issue1316Tests]

