BeforeExecute
-- SqlCe

DROP TABLE [Issue681Table4]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue681Table4]
(
	[ID]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_Issue681Table4] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
-- SqlCe

SELECT @@IDENTITY

BeforeExecute
-- SqlCe

DROP TABLE [Issue681Table4]

