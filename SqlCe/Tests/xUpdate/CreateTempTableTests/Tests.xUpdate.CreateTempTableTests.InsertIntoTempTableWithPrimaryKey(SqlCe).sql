-- SqlCe

CREATE TABLE [TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	CONSTRAINT [PK_TableWithPrimaryKey2] PRIMARY KEY ([Key])
)

-- SqlCe

INSERT INTO [TableWithPrimaryKey2]
(
	[Key]
)
SELECT 1

-- SqlCe

DROP TABLE [TableWithPrimaryKey2]

