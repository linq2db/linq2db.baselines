BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1000
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1000

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1001

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1002
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1002

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1003
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1003

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1004
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1004

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1005
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1005

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1006
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1006

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1007
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1007

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1008
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1008

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @ParentID Int -- Int32
SET     @ParentID = 1009
DECLARE @Value1 Int -- Int32
SET     @Value1 = 1009

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
-- SqlServer.Contained.MS SqlServer.2019
DECLARE @skip Int -- Int32
SET     @skip = 2
DECLARE @take Int -- Int32
SET     @take = 5

DELETE [t1]
FROM
	(
		SELECT
			*
		FROM
			[Parent] [x]
		WHERE
			[x].[ParentID] > 1000
		ORDER BY
			[x].[ParentID] DESC
		OFFSET @skip ROWS FETCH NEXT @take ROWS ONLY 
	) [t1]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

SELECT
	[r].[Value1]
FROM
	[Parent] [r]
WHERE
	[r].[ParentID] >= 1000
ORDER BY
	[r].[ParentID]

BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019

DELETE [c_1]
FROM
	[Parent] [c_1]
WHERE
	[c_1].[ParentID] >= 1000

