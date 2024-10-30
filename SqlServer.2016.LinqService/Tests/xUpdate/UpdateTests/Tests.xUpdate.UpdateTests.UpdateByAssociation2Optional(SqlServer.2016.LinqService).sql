BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [MainTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[MainTable]', N'U') IS NULL)
	CREATE TABLE [MainTable]
	(
		[Id]    Int            NOT NULL,
		[Field] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
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
-- SqlServer.2016
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
-- SqlServer.2016

DROP TABLE IF EXISTS [AssociatedTable]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[AssociatedTable]', N'U') IS NULL)
	CREATE TABLE [AssociatedTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016
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
-- SqlServer.2016
DECLARE @id Int -- Int32
SET     @id = 3

UPDATE
	[a_MainOptional]
SET
	[a_MainOptional].[Field] = N'test'
FROM
	[AssociatedTable] [p]
		LEFT JOIN [MainTable] [a_MainOptional] ON [p].[Id] = [a_MainOptional].[Id]
WHERE
	[p].[Id] = @id

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Field]
FROM
	[MainTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [AssociatedTable]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [MainTable]

