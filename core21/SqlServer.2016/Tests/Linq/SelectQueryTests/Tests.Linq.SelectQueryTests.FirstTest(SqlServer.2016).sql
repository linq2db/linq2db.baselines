BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [SampleClass]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take) 
	DateAdd(day, 1, CURRENT_TIMESTAMP), 
	DateAdd(day, 2, CURRENT_TIMESTAMP)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [SampleClass]

