﻿BeforeExecute
-- SqlServer.2014
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2014 (asynchronously)
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'a948600d-de21-4f74-8ac2-9516b287076e'
DECLARE @LastName NVarChar(4000) -- String
SET     @LastName = N'Person'
DECLARE @MiddleName NVarChar(4000) -- String
SET     @MiddleName = N'X'
DECLARE @Gender NVarChar(4000) -- String
SET     @Gender = N'M'

[TestData]..[Person_Insert]

BeforeExecute
-- SqlServer.2014
DECLARE @FirstName NVarChar(4000) -- String
SET     @FirstName = N'a948600d-de21-4f74-8ac2-9516b287076e'

DELETE [t1]
FROM
	[Person] [t1]
WHERE
	[t1].[FirstName] = @FirstName

