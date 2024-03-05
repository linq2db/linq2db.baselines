﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ParentID],
	[t1].[ChildID]
FROM
	[Child] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[ID],
	[t1].[MoneyValue],
	[t1].[DateTimeValue],
	[t1].[BoolValue],
	[t1].[GuidValue],
	[t1].[BinaryValue],
	[t1].[SmallIntValue],
	[t1].[StringValue]
FROM
	[LinqDataTypes] [t1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	Count(*)
FROM
	[Parent] [t1]
		INNER JOIN [GrandChild] [g_1] ON [t1].[ParentID] = [g_1].[ParentID]
		INNER JOIN [Child] [c_1] ON [g_1].[ChildID] = [c_1].[ChildID]
		INNER JOIN [LinqDataTypes] [t] ON [c_1].[ParentID] = [t].[ID]

