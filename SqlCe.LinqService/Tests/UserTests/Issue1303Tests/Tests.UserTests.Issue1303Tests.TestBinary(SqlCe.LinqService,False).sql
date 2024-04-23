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
	[_].[ID],
	[_].[Array] as [Array_1],
	[_].[Binary] as [Binary_1]
FROM
	[Issue1303] [_]
WHERE
	[_].[ID] = 1

BeforeExecute
-- SqlCe
DECLARE @Array VarBinary(3) -- Binary
SET     @Array = 0x010203

SELECT TOP (2)
	[_].[ID],
	[_].[Array] as [Array_1],
	[_].[Binary] as [Binary_1]
FROM
	[Issue1303] [_]
WHERE
	[_].[Array] = @Array

BeforeExecute
-- SqlCe
DECLARE @Binary VarBinary(2) -- Binary
SET     @Binary = 0x0405

SELECT TOP (2)
	[_].[ID],
	[_].[Array] as [Array_1],
	[_].[Binary] as [Binary_1]
FROM
	[Issue1303] [_]
WHERE
	[_].[Binary] = @Binary

BeforeExecute
-- SqlCe

DROP TABLE [Issue1303]

