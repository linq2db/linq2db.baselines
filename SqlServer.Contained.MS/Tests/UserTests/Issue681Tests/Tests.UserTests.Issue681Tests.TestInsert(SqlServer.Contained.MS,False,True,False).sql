﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 5
DECLARE @Value Int -- Int32
SET     @Value = 10

INSERT INTO [TestDataMSContained]..[Issue681Table]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

