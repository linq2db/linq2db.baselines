-- SqlServer.2017
DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.2017
DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.2017
DECLARE @values Int -- Int32
SET     @values = 1001

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values,
	1
)

-- SqlServer.2017
DECLARE @values Int -- Int32
SET     @values = 1002

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@values,
	1
)

-- SqlServer.2017
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

-- SqlServer.2017
DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] IN (1001, 1002)

-- SqlServer.2017
SELECT
	COUNT(*)
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] > 1000

