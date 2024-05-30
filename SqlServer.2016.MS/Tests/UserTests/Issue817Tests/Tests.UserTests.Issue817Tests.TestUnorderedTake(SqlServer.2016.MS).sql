BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	1
FROM
	[Person] [t1]

