BeforeExecute
-- SqlCe

DROP TABLE [TableWithIdentity]

BeforeExecute
-- SqlCe

CREATE TABLE [TableWithIdentity]
(
	[Id]    Int  NOT NULL IDENTITY,
	[Value] Int  NOT NULL,

	CONSTRAINT [PK_TableWithIdentity] PRIMARY KEY ([Id])
)

BeforeExecute
-- SqlCe
DECLARE @value Int -- Int32
SET     @value = 123

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@value
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value] as [Value_1]
FROM
	[TableWithIdentity] [t1]

BeforeExecute
-- SqlCe

DROP TABLE [TableWithIdentity]

