BeforeExecute
-- SqlCe

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlCe
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DateAdd(day, 1, GetDate()),
	DateAdd(day, 2, GetDate())

BeforeExecute
-- SqlCe

DROP TABLE [SampleClass]

