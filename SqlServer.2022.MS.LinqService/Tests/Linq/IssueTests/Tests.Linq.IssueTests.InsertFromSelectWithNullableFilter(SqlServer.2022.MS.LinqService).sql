BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @ID SmallInt -- Int16
SET     @ID = 123
DECLARE @ID_1 SmallInt -- Int16
SET     @ID_1 = 0

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	@ID,
	[t1].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON [_].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			[_].[smallintDataType] = @ID_1
	) [t1]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @ID SmallInt -- Int16
SET     @ID = 123
DECLARE @ID_1 SmallInt -- Int16
SET     @ID_1 = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	@ID,
	[t1].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON [_].[smallintDataType] = [a_Association].[intDataType]
		WHERE
			[_].[smallintDataType] = @ID_1
	) [t1]

