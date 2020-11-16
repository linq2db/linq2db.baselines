BeforeExecute
-- SqlServer.2019 SqlServer.2017
DECLARE @id Int -- Int32
SET     @id = 1
DECLARE @id_1 Int -- Int32
SET     @id_1 = 1
DECLARE @id_2 Int -- Int32
SET     @id_2 = 1

SELECT
	Count(*)
FROM
	[Person] [_]
WHERE
	(([_].[PersonID] = @id OR [_].[PersonID] <= @id_1) OR [_].[PersonID] = @id_2)

