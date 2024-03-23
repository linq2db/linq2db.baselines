BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Table404One]', N'U') IS NULL)
	CREATE TABLE [Table404One]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Table404One]
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
SET     @Id = 2

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NULL)
	CREATE TABLE [Table404Two]
	(
		[Id]           Int NOT NULL,
		[Usage]        Int NOT NULL,
		[FirstTableId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404One]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Table404One]', N'U') IS NULL)
	CREATE TABLE [Table404One]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [Table404One]
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
SET     @Id = 2

INSERT INTO [Table404One]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[Table404Two]', N'U') IS NULL)
	CREATE TABLE [Table404Two]
	(
		[Id]           Int NOT NULL,
		[Usage]        Int NOT NULL,
		[FirstTableId] Int NOT NULL
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 1

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Usage Int -- Int32
SET     @Usage = 0
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Usage Int -- Int32
SET     @Usage = 1
DECLARE @FirstTableId Int -- Int32
SET     @FirstTableId = 2

INSERT INTO [Table404Two]
(
	[Id],
	[Usage],
	[FirstTableId]
)
VALUES
(
	@Id,
	@Usage,
	@FirstTableId
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Usage Int -- Int32
SET     @Usage = 0

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019
DECLARE @Usage Int -- Int32
SET     @Usage = 1

SELECT
	[m_1].[Id],
	[d].[Id],
	[d].[Usage],
	[d].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			[Table404One] [t1]
	) [m_1]
		INNER JOIN [Table404Two] [d] ON [m_1].[Id] = [d].[FirstTableId]
WHERE
	[d].[Usage] = @Usage

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[Table404One] [t1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404Two]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [Table404One]

