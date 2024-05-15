BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [InstanceClass]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[InstanceClass]', N'U') IS NULL)
	CREATE TABLE [InstanceClass]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Value Int -- Int32
SET     @Value = 101

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Value Int -- Int32
SET     @Value = 102

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @Value Int -- Int32
SET     @Value = 103

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @Value Int -- Int32
SET     @Value = 104

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 5
DECLARE @Value Int -- Int32
SET     @Value = 105

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 6
DECLARE @Value Int -- Int32
SET     @Value = 106

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 7
DECLARE @Value Int -- Int32
SET     @Value = 107

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 8
DECLARE @Value Int -- Int32
SET     @Value = 108

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 9
DECLARE @Value Int -- Int32
SET     @Value = 109

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 10
DECLARE @Value Int -- Int32
SET     @Value = 110

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 11
DECLARE @Value Int -- Int32
SET     @Value = 111

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 12
DECLARE @Value Int -- Int32
SET     @Value = 112

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 13
DECLARE @Value Int -- Int32
SET     @Value = 113

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 14
DECLARE @Value Int -- Int32
SET     @Value = 114

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 15
DECLARE @Value Int -- Int32
SET     @Value = 115

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 16
DECLARE @Value Int -- Int32
SET     @Value = 116

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 17
DECLARE @Value Int -- Int32
SET     @Value = 117

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 18
DECLARE @Value Int -- Int32
SET     @Value = 118

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 19
DECLARE @Value Int -- Int32
SET     @Value = 119

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
DECLARE @Id Int -- Int32
SET     @Id = 20
DECLARE @Value Int -- Int32
SET     @Value = 120

INSERT INTO [InstanceClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	COUNT(*)
FROM
	[InstanceClass] [t]
WHERE
	CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS NVarChar(11)) = CAST([t].[Id] AS NVarChar(11)) + CAST([t].[Value] AS VarChar(11))

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [InstanceClass]

