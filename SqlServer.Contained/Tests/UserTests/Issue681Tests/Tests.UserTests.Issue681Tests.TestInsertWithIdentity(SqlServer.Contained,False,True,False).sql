﻿BeforeExecute
--  SqlServer.Contained SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
--  SqlServer.Contained SqlServer.2019
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestDataContained]..[Issue681Table4]
(
	[Value]
)
VALUES
(
	@Value
)

SELECT SCOPE_IDENTITY()

