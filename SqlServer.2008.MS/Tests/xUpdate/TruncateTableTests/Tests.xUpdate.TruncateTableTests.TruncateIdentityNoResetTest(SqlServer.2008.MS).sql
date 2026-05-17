-- SqlServer.2008.MS SqlServer.2008

DELETE FROM [test_temp]

-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t2].[ID],
	[t2].[Field1]
FROM
	(
		SELECT
			[t1].[ID],
			[t1].[Field1],
			ROW_NUMBER() OVER (ORDER BY [t1].[ID]) as [RN]
		FROM
			[test_temp] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 2)
ORDER BY
	[t2].[ID]

-- SqlServer.2008.MS SqlServer.2008

DELETE FROM [test_temp]

-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2008.MS SqlServer.2008

INSERT INTO [test_temp]
(
	[Field1]
)
VALUES
(
	1
)

-- SqlServer.2008.MS SqlServer.2008
DECLARE @skip Int -- Int32
SET     @skip = 1

SELECT
	[t2].[ID],
	[t2].[Field1]
FROM
	(
		SELECT
			[t1].[ID],
			[t1].[Field1],
			ROW_NUMBER() OVER (ORDER BY [t1].[ID]) as [RN]
		FROM
			[test_temp] [t1]
	) [t2]
WHERE
	[t2].[RN] > @skip AND [t2].[RN] <= (@skip + 2)
ORDER BY
	[t2].[ID]

