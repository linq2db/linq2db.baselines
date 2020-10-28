BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [TableWithData]
(
	[Id]       Int          NOT NULL,
	[Value]    Int          NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012 (asynchronously)
DECLARE @p1 Int -- Int32
SET     @p1 = 200
DECLARE @value_2 Int -- Int32
SET     @value_2 = 2
DECLARE @p2 NVarChar(50) -- String
SET     @p2 = N'SomeStr2'

INSERT INTO [TableWithData]
(
	[Value],
	[Id],
	[ValueStr]
)
OUTPUT
	[INSERTED].[Id],
	[INSERTED].[Value],
	[INSERTED].[ValueStr]
VALUES
(
	@p1,
	@value_2,
	@p2
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [TableWithData]

