BeforeExecute
-- SqlCe

DROP TABLE [SomeTable]

BeforeExecute
-- SqlCe

CREATE TABLE [SomeTable]
(
	[ClassProp] Bit NOT NULL,
	[Interface] Bit NOT NULL
)

BeforeExecute
-- SqlCe

INSERT INTO [SomeTable]
(
	[ClassProp],
	[Interface]
)
VALUES
(
	1,
	0
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[ClassProp],
	[t1].[Interface]
FROM
	[SomeTable] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [SomeTable]

