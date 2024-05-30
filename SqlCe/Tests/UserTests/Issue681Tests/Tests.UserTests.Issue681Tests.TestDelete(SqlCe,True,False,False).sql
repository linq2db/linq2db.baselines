BeforeExecute
-- SqlCe

DROP TABLE [Issue681Table]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue681Table]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @ID Int -- Int32
SET     @ID = 5

DELETE FROM
	[Issue681Table]
WHERE
	[Issue681Table].[ID] = @ID

BeforeExecute
-- SqlCe

DROP TABLE [Issue681Table]

