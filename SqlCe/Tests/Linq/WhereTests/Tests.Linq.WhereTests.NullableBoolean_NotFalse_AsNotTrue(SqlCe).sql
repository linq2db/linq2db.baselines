BeforeExecute
-- SqlCe

DROP TABLE [NullableBool]

BeforeExecute
-- SqlCe

CREATE TABLE [NullableBool]
(
	[ID]   Int NOT NULL,
	[Bool] Bit     NULL
)

BeforeExecute
-- SqlCe

SELECT
	[r].[ID],
	[r].[Bool]
FROM
	[NullableBool] [r]
WHERE
	[r].[Bool] = 1 OR [r].[Bool] IS NULL

BeforeExecute
-- SqlCe

DROP TABLE [NullableBool]

