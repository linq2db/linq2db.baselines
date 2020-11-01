BeforeExecute
-- SqlServer.2012

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 0
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 0
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 1
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 0
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 1
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 1
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 0

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_1 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_1 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Table404One]

BeforeExecute
-- SqlServer.2012

CREATE TABLE [Table404One]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012
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
-- SqlServer.2012
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
-- SqlServer.2012

CREATE TABLE [Table404Two]
(
	[Id]           Int NOT NULL,
	[Usage]        Int NOT NULL,
	[FirstTableId] Int NOT NULL
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 0
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 0
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 1
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 0
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 1
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 1
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
	@Usage_1,
	@FirstTableId
)

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 0

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_1 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1
DECLARE @Usage_1 Int -- Int32
SET     @Usage_1 = 1

SELECT
	[key_data_result].[Id],
	[_v].[Id],
	[_v].[Usage],
	[_v].[FirstTableId]
FROM
	(
		SELECT DISTINCT
			[t1].[Id]
		FROM
			(
				SELECT TOP (@take)
					[c_1].[Id]
				FROM
					[Table404One] [c_1]
			) [t1]
	) [key_data_result]
		INNER JOIN [Table404Two] [_v] ON [_v].[Usage] = @Usage_1 AND [_v].[FirstTableId] = [key_data_result].[Id]

BeforeExecute
-- SqlServer.2012
DECLARE @take Int -- Int32
SET     @take = 1

SELECT TOP (@take)
	[c_1].[Id]
FROM
	[Table404One] [c_1]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Table404Two]

BeforeExecute
-- SqlServer.2012

DROP TABLE [Table404One]

