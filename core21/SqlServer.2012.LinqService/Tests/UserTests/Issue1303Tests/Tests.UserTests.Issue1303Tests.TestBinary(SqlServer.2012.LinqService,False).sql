BeforeExecute
-- SqlServer.2012

CREATE TABLE [Issue1303]
(
	[ID]     Int           NOT NULL,
	[Array]  VarBinary(10)     NULL,
	[Binary] VarBinary(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2012
DECLARE @Array_1 VarBinary(10) -- Binary
SET     @Array_1 = 0x010203
DECLARE @Binary_1 VarBinary(2) -- Binary
SET     @Binary_1 = 0x0405

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	@Array_1,
	@Binary_1
)

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[ID] = 1

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @Array_2 VarBinary(10) -- Binary
SET     @Array_2 = 0x010203

SELECT TOP (@take)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Array] = @Array_2

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 2
DECLARE @Binary_2 VarBinary(2) -- Binary
SET     @Binary_2 = 0x0405

SELECT TOP (@take)
	[_].[ID],
	[_].[Array],
	[_].[Binary]
FROM
	[Issue1303] [_]
WHERE
	[_].[Binary] = @Binary_2

BeforeExecute
-- SqlServer.2012

DROP TABLE [Issue1303]

