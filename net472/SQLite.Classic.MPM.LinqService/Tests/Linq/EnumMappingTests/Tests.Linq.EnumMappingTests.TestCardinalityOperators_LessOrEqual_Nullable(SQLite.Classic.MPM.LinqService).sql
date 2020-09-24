BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE [EnumCardinality]
(
	[Id]        INTEGER NOT NULL,
	[Property1] NChar   NOT NULL,
	[Property2] NChar       NULL,
	[Property3] NChar   NOT NULL,
	[Property4] NChar       NULL,
	[Property5] NChar   NOT NULL,
	[Property6] NChar       NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Property1 NChar -- StringFixedLength
SET     @Property1 = 'A'
DECLARE @Property2 NChar -- StringFixedLength
SET     @Property2 = 'A'
DECLARE @Property3 NChar -- StringFixedLength
SET     @Property3 = 'A'
DECLARE @Property4 NChar -- StringFixedLength
SET     @Property4 = 'A'
DECLARE @Property5 NChar -- StringFixedLength
SET     @Property5 = 'A'
DECLARE @Property6 NChar -- StringFixedLength
SET     @Property6 = 'A'

INSERT INTO [EnumCardinality]
(
	[Id],
	[Property1],
	[Property2],
	[Property3],
	[Property4],
	[Property5],
	[Property6]
)
VALUES
(
	@Id,
	@Property1,
	@Property2,
	@Property3,
	@Property4,
	@Property5,
	@Property6
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 2
DECLARE @Property1 NChar -- StringFixedLength
SET     @Property1 = 'B'
DECLARE @Property2 NChar -- StringFixedLength
SET     @Property2 = 'B'
DECLARE @Property3 NChar -- StringFixedLength
SET     @Property3 = 'B'
DECLARE @Property4 NChar -- StringFixedLength
SET     @Property4 = 'B'
DECLARE @Property5 NChar -- StringFixedLength
SET     @Property5 = 'B'
DECLARE @Property6 NChar -- StringFixedLength
SET     @Property6 = 'B'

INSERT INTO [EnumCardinality]
(
	[Id],
	[Property1],
	[Property2],
	[Property3],
	[Property4],
	[Property5],
	[Property6]
)
VALUES
(
	@Id,
	@Property1,
	@Property2,
	@Property3,
	@Property4,
	@Property5,
	@Property6
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id  -- Int32
SET     @Id = 3
DECLARE @Property1 NChar -- StringFixedLength
SET     @Property1 = 'C'
DECLARE @Property2 NChar -- StringFixedLength
SET     @Property2 = 'C'
DECLARE @Property3 NChar -- StringFixedLength
SET     @Property3 = 'C'
DECLARE @Property4 NChar -- StringFixedLength
SET     @Property4 = 'C'
DECLARE @Property5 NChar -- StringFixedLength
SET     @Property5 = 'C'
DECLARE @Property6 NChar -- StringFixedLength
SET     @Property6 = 'C'

INSERT INTO [EnumCardinality]
(
	[Id],
	[Property1],
	[Property2],
	[Property3],
	[Property4],
	[Property5],
	[Property6]
)
VALUES
(
	@Id,
	@Property1,
	@Property2,
	@Property3,
	@Property4,
	@Property5,
	@Property6
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @take  -- Int32
SET     @take = 2

SELECT
	[_].[Id],
	[_].[Property1],
	[_].[Property2],
	[_].[Property3],
	[_].[Property4],
	[_].[Property5],
	[_].[Property6]
FROM
	[EnumCardinality] [_]
WHERE
	[_].[Property2] <= 'A'
LIMIT @take

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE [EnumCardinality]

