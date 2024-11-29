BeforeExecute
-- SqlCe
DECLARE @ID SmallInt -- Int16
SET     @ID = 0

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123 as [c1],
	[t2].[ID] as [c2]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [t1]
				INNER JOIN [AllTypes] [a_Association] ON [t1].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			[t1].[smallintDataType] = @ID
	) [t2]

BeforeExecute
-- SqlCe
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	123 as [c1],
	[t2].[ID] as [c2]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [t1]
				INNER JOIN [AllTypes] [a_Association] ON [t1].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			[t1].[smallintDataType] = @ID
	) [t2]

