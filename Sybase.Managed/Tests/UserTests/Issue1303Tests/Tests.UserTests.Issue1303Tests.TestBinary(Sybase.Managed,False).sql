BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1303') IS NOT NULL)
	DROP TABLE [Issue1303]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1303') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue1303]
		(
			[ID]     Int           NOT NULL,
			[Array]  VarBinary(10)     NULL,
			[Binary] VarBinary(10)     NULL,

			CONSTRAINT [PK_Issue1303] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Array VarBinary(3) -- Binary
SET     @Array = 0x010203
DECLARE @Binary VarBinary(2) -- Binary
SET     @Binary = 0x0405

INSERT INTO [Issue1303]
(
	[ID],
	[Array],
	[Binary]
)
VALUES
(
	1,
	@Array,
	@Binary
)

BeforeExecute
-- Sybase.Managed Sybase

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[ID] = 1

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Array VarBinary(3) -- Binary
SET     @Array = 0x010203

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Array] = @Array

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Binary VarBinary(2) -- Binary
SET     @Binary = 0x0405

SELECT TOP 2
	[t1].[ID],
	[t1].[Array],
	[t1].[Binary]
FROM
	[Issue1303] [t1]
WHERE
	[t1].[Binary] = @Binary

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue1303') IS NOT NULL)
	DROP TABLE [Issue1303]

