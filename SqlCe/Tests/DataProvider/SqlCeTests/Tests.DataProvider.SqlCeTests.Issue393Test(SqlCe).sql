﻿BeforeExecute
BeginTransaction
BeforeExecute
--  SqlCe
DECLARE @imageDataType Image(9000) -- Binary
SET     @imageDataType = 0x000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F60616263
-- value above truncated for logging

INSERT INTO [AllTypes]
(
	[imageDataType]
)
VALUES
(
	@imageDataType
)

BeforeExecute
--  SqlCe

SELECT @@IDENTITY

BeforeExecute
--  SqlCe
DECLARE @id Int -- Int32
SET     @id = 3

SELECT TOP (1)
	[t1].[ID],
	[t1].[imageDataType]
FROM
	[AllTypes] [t1]
WHERE
	[t1].[ID] = @id

BeforeExecute
DisposeTransaction
