BeforeExecute
-- SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	CHECKSUM(*)
FROM
	[Person] [p]

