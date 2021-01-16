BeforeExecute
-- SqlServer.2005

CREATE TABLE [CreateTableTypes]
(
	[Id]    Int    NOT NULL,
	[Int64] BigInt NOT NULL
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 0

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64]
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- SqlServer.2005
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Int64 BigInt -- Int64
SET     @Int64 = 3

INSERT INTO [CreateTableTypes]
(
	[Id],
	[Int64]
)
VALUES
(
	@Id,
	@Int64
)

BeforeExecute
-- SqlServer.2005

DROP TABLE [CreateTableTypes]

