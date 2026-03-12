-- SqlServer.2016

DELETE FROM [test_temp]

-- SqlServer.2016

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2016

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2016
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

-- SqlServer.2016

DELETE FROM [test_temp]

-- SqlServer.2016

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2016

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2016
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

