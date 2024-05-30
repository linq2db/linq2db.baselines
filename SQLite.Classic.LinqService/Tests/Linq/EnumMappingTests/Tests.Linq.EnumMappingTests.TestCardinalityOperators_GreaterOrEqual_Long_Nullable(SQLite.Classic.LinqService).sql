BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EnumCardinality]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [EnumCardinality]
(
	[Id]        INTEGER  NOT NULL,
	[Property1] NChar(1) NOT NULL,
	[Property2] NChar(1)     NULL,
	[Property3] NChar(1) NOT NULL,
	[Property4] NChar(1)     NULL,
	[Property5] NChar(1) NOT NULL,
	[Property6] NChar(1)     NULL
)

BeforeExecute
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite
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
-- SQLite.Classic SQLite

SELECT
	[t1].[Id],
	[t1].[Property1],
	[t1].[Property2],
	[t1].[Property3],
	[t1].[Property4],
	[t1].[Property5],
	[t1].[Property6]
FROM
	[EnumCardinality] [t1]
WHERE
	[t1].[Property6] >= 'C'
LIMIT 2

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [EnumCardinality]

