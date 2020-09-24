BeforeExecute
-- SqlCe

CREATE TABLE [Issue1107TB]
(
	[Id]       Int      NOT NULL,
	[TestDate] DateTime NOT NULL,

	CONSTRAINT [PK_Issue1107TB] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue1107TB]
(
	[Id],
	[TestDate]
)
SELECT 0,'2018-01-01'

BeforeExecute
-- SqlCe

DROP TABLE [Issue1107TB]

