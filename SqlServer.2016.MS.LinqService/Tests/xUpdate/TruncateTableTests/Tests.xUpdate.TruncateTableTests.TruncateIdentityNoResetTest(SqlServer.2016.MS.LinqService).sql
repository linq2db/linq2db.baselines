BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DELETE FROM [test_temp]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

DELETE FROM [test_temp]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t1].[ID],
	[t1].[Field1]
FROM
	[test_temp] [t1]
ORDER BY
	[t1].[ID]
OFFSET @skip ROWS FETCH NEXT 2 ROWS ONLY 

