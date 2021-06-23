BeforeExecute
-- SqlCe

CREATE TABLE [Table_3056]
(
	[Id]          Int            NOT NULL IDENTITY,
	[Name]        NVarChar(100)      NULL,
	[Description] NVarChar(500)      NULL,

	CONSTRAINT [PK_Table_3056] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe

INSERT INTO [Table_3056]
(
	[Name],
	[Description]
)
SELECT 'n1','d0' UNION ALL
SELECT 'n2','d00'

BeforeExecute
-- SqlCe

DROP TABLE [Table_3056]

