BeforeExecute
-- SqlCe

DROP TABLE [Issue1303]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue1303]
(
	[ID]     Int           NOT NULL,
	[Array]  VARBINARY(10)     NULL,
	[Binary] VARBINARY(10)     NULL,

	CONSTRAINT [PK_Issue1303] PRIMARY KEY ([ID])
)

BeforeExecute
-- SqlCe

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	0x010203,
	0x0405
)

BeforeExecute
-- SqlCe

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array] as [Array_1],
	[t1].[Binary] as [Binary_1]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- SqlCe
DECLARE @cond VarBinary(3) -- Binary
SET     @cond = 0x010203

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array] as [Array_1],
	[t1].[Binary] as [Binary_1]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Array] = @cond

BeforeExecute
-- SqlCe
DECLARE @cond VarBinary(2) -- Binary
SET     @cond = 0x0405

SELECT TOP (2)
	[t1].[ID],
	[t1].[Array] as [Array_1],
	[t1].[Binary] as [Binary_1]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Binary] = @cond

BeforeExecute
-- SqlCe

DROP TABLE [Issue1303]

