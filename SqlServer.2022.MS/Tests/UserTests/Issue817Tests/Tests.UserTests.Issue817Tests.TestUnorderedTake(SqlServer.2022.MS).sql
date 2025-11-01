-- SqlServer.2022.MS SqlServer.2022
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	1
FROM
	[Person] [t1]

