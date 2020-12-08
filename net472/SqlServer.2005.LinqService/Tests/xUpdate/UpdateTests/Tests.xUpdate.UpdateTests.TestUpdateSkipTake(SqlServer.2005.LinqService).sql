BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1000
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1003
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1004
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1005
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1006
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1007
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1008
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1009
DECLARE @Value1 Int -- Int32
SET     @Value1 = NULL

INSERT INTO [Parent]
(
	[ParentID],
	[Value1]
)
VALUES
(
	@ParentID,
	@Value1
)

BeforeExecute
-- SqlServer.2005
DECLARE @skip Int -- Int32
SET     @skip = 1
DECLARE @take Int -- Int32
SET     @take = 6

UPDATE
	[t2]
SET
	[t2].[Value1] = 1
FROM
	(
		SELECT
			[t1].[Value1]
		FROM
			(
				SELECT
					[x].[Value1],
					ROW_NUMBER() OVER (ORDER BY [x].[ParentID] DESC) as [RN]
				FROM
					[Parent] [x]
				WHERE
					[x].[ParentID] > 1000
			) [t1]
		WHERE
			[t1].[RN] > @skip AND [t1].[RN] <= @take
	) [t2]

BeforeExecute
-- SqlServer.2005
DECLARE @take Int -- Int32
SET     @take = 2

SELECT TOP (@take)
	[p].[ParentID],
	[p].[Value1]
FROM
	[Parent] [p]
WHERE
	[p].[ParentID] = 1009

BeforeExecute
-- SqlServer.2005

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

