﻿BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @Value Int -- Int32
SET     @Value = 1

INSERT INTO [TableWithIdentity]
(
	[Value]
)
VALUES
(
	@Value
)

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012
DECLARE @newValue Int -- Int32
SET     @newValue = 123

UPDATE
	[TableWithIdentity]
SET
	[Value] = @newValue

BeforeExecute
--  SqlServer.2012.MS SqlServer.2012

SELECT TOP (2)
	[t1].[Id],
	[t1].[Value]
FROM
	[TableWithIdentity] [t1]

