BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [MainTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[MainTable]', N'U') IS NULL)
	CREATE TABLE [MainTable]
	(
		[Id]    Int            NOT NULL,
		[Field] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Field NVarChar(4000) -- String
SET     @Field = N'value 1'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Field NVarChar(4000) -- String
SET     @Field = N'value 2'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Field NVarChar(4000) -- String
SET     @Field = N'value 3'

INSERT INTO [MainTable]
(
	[Id],
	[Field]
)
VALUES
(
	@Id,
	@Field
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [AssociatedTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[AssociatedTable]', N'U') IS NULL)
	CREATE TABLE [AssociatedTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [AssociatedTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_MainRequired]
SET
	[a_MainRequired].[Field] = N'test'
FROM
	[MainTable] [t1]
		INNER JOIN [AssociatedTable] [a_AssociatedRequired] ON [t1].[Id] = [a_AssociatedRequired].[Id]
		INNER JOIN [MainTable] [a_MainRequired] ON [a_AssociatedRequired].[Id] = [a_MainRequired].[Id]
WHERE
	[t1].[Id] = @id

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [AssociatedTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [MainTable]

