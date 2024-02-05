BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	BINARY_CHECKSUM(*)
FROM
	[Person] [p]

