BeforeExecute
-- SqlServer.2005

CREATE TABLE [ValuesTable]
(
	[Id]         BigInt NOT NULL,
	[SomeValue1] Int    NOT NULL,
	[SomeValue2] Int    NOT NULL,

	CONSTRAINT [PK_ValuesTable] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2005
DECLARE @param Int -- Int32
SET     @param = 2

INSERT INTO [ValuesTable]
(
	[Id],
	[SomeValue1],
	[SomeValue2]
)
VALUES
(
	1,
	2,
	@param
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [ValuesTable]

