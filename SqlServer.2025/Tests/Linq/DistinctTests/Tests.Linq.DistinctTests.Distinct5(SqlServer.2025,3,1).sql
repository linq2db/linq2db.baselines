BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2),
	@Value1
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @Value1 Int -- Int32
SET     @Value1 = 4

SELECT DISTINCT
	Coalesce([p].[Value1], [p].[ParentID] % 2),
	@Value1
FROM
	[Parent] [p]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[ParentID],
	[t1].[Value1]
FROM
	[Parent] [t1]

