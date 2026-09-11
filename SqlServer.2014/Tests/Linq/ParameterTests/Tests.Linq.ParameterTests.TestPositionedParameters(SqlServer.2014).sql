-- SqlServer.2014
DECLARE @z2 Int -- Int32
SET     @z2 = 2
DECLARE @y10 Int -- Int32
SET     @y10 = 10
DECLARE @x3 Int -- Int32
SET     @x3 = 3

SELECT
	((((@x3 * (@y10 - @z2) / @x3) * @z2) * (((((@x3 * (@y10 - @z2) / @x3) * @z2) * (@y10 - @z2) / ((@x3 * (@y10 - @z2) / @x3) * @z2)) * @z2) - [child_1].[ChildID]) / ((@x3 * (@y10 - @z2) / @x3) * @z2)) * [child_1].[ChildID])
FROM
	[Child] [child_1]

