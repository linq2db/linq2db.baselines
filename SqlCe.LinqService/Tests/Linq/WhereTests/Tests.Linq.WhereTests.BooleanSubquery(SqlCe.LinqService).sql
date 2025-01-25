BeforeExecute
-- SqlCe

DROP TABLE [WhereWithBool]

BeforeExecute
-- SqlCe

CREATE TABLE [WhereWithBool]
(
	[Id]        Int NOT NULL,
	[BoolValue] Bit NOT NULL,

	CONSTRAINT [PK_WhereWithBool] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @BoolValue Bit -- Boolean
SET     @BoolValue = 1

INSERT INTO [WhereWithBool]
(
	[Id],
	[BoolValue]
)
VALUES
(
	@Id,
	@BoolValue
)

BeforeExecute
-- SqlCe

SELECT
	[t].[Id],
	[t].[BoolValue]
FROM
	[WhereWithBool] [t],
	[WhereWithBool] [x]
WHERE
	[x].[BoolValue] = 1 AND [x].[Id] = 1

BeforeExecute
-- SqlCe

DROP TABLE [WhereWithBool]

