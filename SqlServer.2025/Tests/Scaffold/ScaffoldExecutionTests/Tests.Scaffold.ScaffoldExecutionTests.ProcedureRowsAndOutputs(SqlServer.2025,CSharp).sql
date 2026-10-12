-- SqlServer.2025
DECLARE @input Int -- Int32
SET     @input = 10
DECLARE @output1 Int -- Int32
SET     @output1 = NULL
DECLARE @output2 Int -- Int32
SET     @output2 = NULL

[QueryProcParameters]

-- SqlServer.2025
SELECT
	COUNT(*)
FROM
	[Person] [t1]

