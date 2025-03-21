Parameters:
@p0='?' (DbType = Int32), @p1='?' (DbType = Int32), @p2='?' (DbType = Int32), @p3='?' (DbType = Int32), @p4='?' (DbType = Int32)

SET NOCOUNT ON;
DECLARE @inserted0 TABLE ([Id] int, [_Position] [int]);
MERGE [IssueEnum] USING (
VALUES (@p0, 0),
(@p1, 1),
(@p2, 2),
(@p3, 3),
(@p4, 4)) AS i ([Value], _Position) ON 1=0
WHEN NOT MATCHED THEN
INSERT ([Value])
VALUES (i.[Value])
OUTPUT INSERTED.[Id], i._Position
INTO @inserted0;

SELECT [t].[Id] FROM [IssueEnum] t
INNER JOIN @inserted0 i ON ([t].[Id] = [i].[Id])
ORDER BY [i].[_Position];


-- SqlServer.2016 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[IssueEnum] [t1]



