BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID SmallInt -- Int16
SET     @ID = 123
DECLARE @ID SmallInt -- Int16
SET     @ID = 0

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	?,
	[t1].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON ([_].[smallintDataType] = [a_Association].[intDataType])
		WHERE
			[_].[smallintDataType] = ?
	) [t1]

BeforeExecute
-- Access.Odbc AccessODBC
DECLARE @ID SmallInt -- Int16
SET     @ID = 123
DECLARE @ID SmallInt -- Int16
SET     @ID = 1234

INSERT INTO [AllTypes]
(
	[smallintDataType],
	[intDataType]
)
SELECT
	?,
	[t1].[ID]
FROM
	(
		SELECT DISTINCT
			[a_Association].[smallintDataType] as [ID]
		FROM
			[AllTypes] [_]
				INNER JOIN [AllTypes] [a_Association] ON ([_].[smallintDataType] = [a_Association].[intDataType])
		WHERE
			[_].[smallintDataType] = ?
	) [t1]

