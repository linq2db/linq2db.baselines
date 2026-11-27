-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Type Integer -- Int32
SET     @Type = 2
DECLARE @BaseField Integer -- Int32
SET     @BaseField = 3
DECLARE @ConcreteField Integer -- Int32
SET     @ConcreteField = 4

INSERT INTO [TphThingBeta]
(
	[Id],
	[Type],
	[BaseField],
	[ConcreteField]
)
VALUES
(
	@Id,
	@Type,
	@BaseField,
	@ConcreteField
)

-- SQLite.Classic.MPM SQLite.Classic SQLite
SELECT
	[r].[Type]
FROM
	[TphThingBeta] [r]

