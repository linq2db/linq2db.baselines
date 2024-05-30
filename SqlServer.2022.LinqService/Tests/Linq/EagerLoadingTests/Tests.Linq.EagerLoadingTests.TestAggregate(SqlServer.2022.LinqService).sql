BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [MasterClass]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[MasterClass]', N'U') IS NULL)
	CREATE TABLE [MasterClass]
	(
		[Id1]        Int            NOT NULL,
		[Id2]        Int            NOT NULL,
		[Value]      NVarChar(4000)     NULL,
		[ByteValues] VarBinary(Max)     NULL,

		CONSTRAINT [PK_MasterClass] PRIMARY KEY CLUSTERED ([Id1], [Id2])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 1
DECLARE @Id2 Int -- Int32
SET     @Id2 = 1
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str1'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 2
DECLARE @Id2 Int -- Int32
SET     @Id2 = 2
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str2'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 3
DECLARE @Id2 Int -- Int32
SET     @Id2 = 3
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str3'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 4
DECLARE @Id2 Int -- Int32
SET     @Id2 = 4
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str4'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 5
DECLARE @Id2 Int -- Int32
SET     @Id2 = 5
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str5'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 6
DECLARE @Id2 Int -- Int32
SET     @Id2 = 6
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str6'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 7
DECLARE @Id2 Int -- Int32
SET     @Id2 = 7
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str7'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 8
DECLARE @Id2 Int -- Int32
SET     @Id2 = 8
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str8'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 9
DECLARE @Id2 Int -- Int32
SET     @Id2 = 9
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str9'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022
DECLARE @Id1 Int -- Int32
SET     @Id1 = 10
DECLARE @Id2 Int -- Int32
SET     @Id2 = 10
DECLARE @Value NVarChar(4000) -- String
SET     @Value = N'Str10'
DECLARE @ByteValues VarBinary(8000) -- Binary
SET     @ByteValues = NULL

INSERT INTO [MasterClass]
(
	[Id1],
	[Id2],
	[Value],
	[ByteValues]
)
VALUES
(
	@Id1,
	@Id2,
	@Value,
	@ByteValues
)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [DetailClass]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[DetailClass]', N'U') IS NULL)
	CREATE TABLE [DetailClass]
	(
		[DetailId]    Int            NOT NULL,
		[MasterId]    Int                NULL,
		[DetailValue] NVarChar(4000)     NULL,

		CONSTRAINT [PK_DetailClass] PRIMARY KEY CLUSTERED ([DetailId])
	)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 1001
DECLARE @MasterId Int -- Int32
SET     @MasterId = 1
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue10001'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 3001
DECLARE @MasterId Int -- Int32
SET     @MasterId = 3
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue30001'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 3002
DECLARE @MasterId Int -- Int32
SET     @MasterId = 3
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue30002'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 3003
DECLARE @MasterId Int -- Int32
SET     @MasterId = 3
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue30003'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 5001
DECLARE @MasterId Int -- Int32
SET     @MasterId = 5
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue50001'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 5002
DECLARE @MasterId Int -- Int32
SET     @MasterId = 5
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue50002'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 5003
DECLARE @MasterId Int -- Int32
SET     @MasterId = 5
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue50003'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 5004
DECLARE @MasterId Int -- Int32
SET     @MasterId = 5
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue50004'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 5005
DECLARE @MasterId Int -- Int32
SET     @MasterId = 5
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue50005'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 7001
DECLARE @MasterId Int -- Int32
SET     @MasterId = 7
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue70001'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 7002
DECLARE @MasterId Int -- Int32
SET     @MasterId = 7
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue70002'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 7003
DECLARE @MasterId Int -- Int32
SET     @MasterId = 7
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue70003'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 7004
DECLARE @MasterId Int -- Int32
SET     @MasterId = 7
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue70004'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 7005
DECLARE @MasterId Int -- Int32
SET     @MasterId = 7
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue70005'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 7006
DECLARE @MasterId Int -- Int32
SET     @MasterId = 7
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue70006'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 7007
DECLARE @MasterId Int -- Int32
SET     @MasterId = 7
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue70007'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9001
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90001'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9002
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90002'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9003
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90003'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9004
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90004'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9005
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90005'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9006
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90006'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9007
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90007'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9008
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90008'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022
DECLARE @DetailId Int -- Int32
SET     @DetailId = 9009
DECLARE @MasterId Int -- Int32
SET     @MasterId = 9
DECLARE @DetailValue NVarChar(4000) -- String
SET     @DetailValue = N'DetailValue90009'

INSERT INTO [DetailClass]
(
	[DetailId],
	[MasterId],
	[DetailValue]
)
VALUES
(
	@DetailId,
	@MasterId,
	@DetailValue
)

BeforeExecute
-- SqlServer.2022

SELECT
	[t3].[SUM_1],
	[t6].[COUNT_1]
FROM
	[MasterClass] [m_1]
		OUTER APPLY (
			SELECT
				SUM([t2].[DetailId]) as [SUM_1]
			FROM
				(
					SELECT
						[t1].[DetailId]
					FROM
						(
							SELECT DISTINCT
								[a_Details].[DetailId]
							FROM
								[DetailClass] [a_Details]
							WHERE
								[m_1].[Id1] = [a_Details].[MasterId]
						) [t1]
					ORDER BY
						[t1].[DetailId]
					OFFSET 1 ROWS FETCH NEXT 5 ROWS ONLY 
				) [t2]
		) [t3]
		OUTER APPLY (
			SELECT
				COUNT(*) as [COUNT_1]
			FROM
				(
					SELECT
						*
					FROM
						(
							SELECT DISTINCT
								[a_Details_1].[DetailValue]
							FROM
								[DetailClass] [a_Details_1]
							WHERE
								[m_1].[Id1] = [a_Details_1].[MasterId]
						) [t4]
					ORDER BY
						[t4].[DetailValue]
					OFFSET 1 ROWS FETCH NEXT 2 ROWS ONLY 
				) [t5]
		) [t6]

BeforeExecute
-- SqlServer.2022

SELECT
	[m_1].[Id1],
	[d].[DetailId],
	[d].[MasterId],
	[d].[DetailValue]
FROM
	(
		SELECT DISTINCT
			[t1].[Id1]
		FROM
			[MasterClass] [t1]
	) [m_1]
		INNER JOIN [DetailClass] [d] ON [m_1].[Id1] = [d].[MasterId]

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id1],
	[t1].[Id2],
	[t1].[Value],
	[t1].[ByteValues]
FROM
	[MasterClass] [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [DetailClass]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [MasterClass]

