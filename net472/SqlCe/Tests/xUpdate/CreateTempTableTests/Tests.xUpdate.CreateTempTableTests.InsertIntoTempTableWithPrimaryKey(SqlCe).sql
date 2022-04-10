BeforeExecute
-- SqlCe

CREATE TABLE [TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey] PRIMARY KEY ([Key])
)

BeforeExecute
-- SqlCe

INSERT INTO [TableWithPrimaryKey]
(
	[Key]
)
SELECT 1

BeforeExecute
-- SqlCe

DROP TABLE [TableWithPrimaryKey]

