BeforeExecute
-- SqlCe

DROP TABLE [WhereCases]

BeforeExecute
-- SqlCe

CREATE TABLE [WhereCases]
(
	[Id]                Int NOT NULL,
	[BoolValue]         Bit NOT NULL,
	[NullableBoolValue] Bit     NULL,

	CONSTRAINT [PK_WhereCases] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [WhereCases]
(
	[Id],
	[BoolValue],
	[NullableBoolValue]
)
SELECT 1,1,NULL UNION ALL
SELECT 2,1,1 UNION ALL
SELECT 3,1,NULL UNION ALL
SELECT 4,1,1 UNION ALL
SELECT 5,1,1 UNION ALL
SELECT 11,0,NULL UNION ALL
SELECT 12,0,0 UNION ALL
SELECT 13,0,NULL UNION ALL
SELECT 14,0,0 UNION ALL
SELECT 15,0,0

BeforeExecute
-- SqlCe

DROP TABLE [WhereCases]

