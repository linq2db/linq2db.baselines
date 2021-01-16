BeforeExecute
-- SqlCe

DROP TABLE [BaseTable]

BeforeExecute
-- SqlCe

CREATE TABLE [BaseTable]
(
	[Value] Int NOT NULL,
	[Id]    Int NOT NULL,

	CONSTRAINT [PK_BaseTable] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [BaseTable]
(
	[Value],
	[Id]
)
SELECT 100,1

BeforeExecute
-- SqlCe

DROP TABLE [BaseTable]

