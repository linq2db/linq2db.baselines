BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 5

UPDATE
	[t1]
SET
	[t1].[Value1] = 1
FROM
	( 
		SELECT TOP (@take) 
			[x].[Value1]
		FROM
			[Parent] [x]
		WHERE
			[x].[ParentID] > 1000
		ORDER BY
			[x].[ParentID] DESC
	) [t1]

BeforeExecute
-- SqlServer.2012

DELETE [t1]
FROM
	[Parent] [t1]
WHERE
	[t1].[ParentID] >= 1000

