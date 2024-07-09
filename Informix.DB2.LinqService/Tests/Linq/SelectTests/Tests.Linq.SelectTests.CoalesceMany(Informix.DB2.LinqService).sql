BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CoalesceNullableFields

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS CoalesceNullableFields
(
	Id        Int NOT NULL,
	Nullable1 Int     NULL,
	Nullable2 Int     NULL,
	Nullable3 Int     NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Nullable1 Integer(4) -- Int32
SET     @Nullable1 = 10
DECLARE @Nullable2 Integer -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Integer -- Int32
SET     @Nullable3 = NULL

INSERT INTO CoalesceNullableFields
(
	Id,
	Nullable1,
	Nullable2,
	Nullable3
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Nullable1 Integer -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Integer(4) -- Int32
SET     @Nullable2 = 20
DECLARE @Nullable3 Integer -- Int32
SET     @Nullable3 = NULL

INSERT INTO CoalesceNullableFields
(
	Id,
	Nullable1,
	Nullable2,
	Nullable3
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @Nullable1 Integer -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Integer -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Integer(4) -- Int32
SET     @Nullable3 = 30

INSERT INTO CoalesceNullableFields
(
	Id,
	Nullable1,
	Nullable2,
	Nullable3
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @Nullable1 Integer -- Int32
SET     @Nullable1 = NULL
DECLARE @Nullable2 Integer -- Int32
SET     @Nullable2 = NULL
DECLARE @Nullable3 Integer -- Int32
SET     @Nullable3 = NULL

INSERT INTO CoalesceNullableFields
(
	Id,
	Nullable1,
	Nullable2,
	Nullable3
)
VALUES
(
	@Id,
	@Nullable1,
	@Nullable2,
	@Nullable3
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	Nvl(t.Nullable1, Nvl(t.Nullable2, Nvl(t.Nullable3, t.Id))),
	Nvl(t.Nullable2, Nvl(t.Nullable1, Nvl(t.Nullable3, t.Id))),
	Nvl(t.Nullable2, Nvl(t.Nullable3, Nvl(t.Nullable1, t.Id))),
	Nvl(t.Nullable3, Nvl(t.Nullable1, Nvl(t.Nullable2, t.Id))),
	Nvl(t.Nullable3, Nvl(t.Nullable2, Nvl(t.Nullable1, t.Id))),
	t.Id,
	Nvl(t.Nullable1, t.Id),
	Nvl(t.Nullable1, Nvl(t.Nullable2, t.Id))
FROM
	CoalesceNullableFields t

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Nullable1,
	t1.Nullable2,
	t1.Nullable3
FROM
	CoalesceNullableFields t1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS CoalesceNullableFields

