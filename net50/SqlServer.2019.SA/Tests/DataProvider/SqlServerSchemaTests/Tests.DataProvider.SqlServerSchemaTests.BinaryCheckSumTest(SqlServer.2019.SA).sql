BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	BINARY_CHECKSUM(*)
FROM
	[Person] [p]

