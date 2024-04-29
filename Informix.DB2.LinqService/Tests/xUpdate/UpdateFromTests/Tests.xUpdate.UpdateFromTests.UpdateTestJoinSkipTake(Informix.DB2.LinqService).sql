BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UpdatedEntities

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS UpdatedEntities
(
	id         Int NOT NULL,
	Value1     Int NOT NULL,
	Value2     Int NOT NULL,
	Value3     Int NOT NULL,
	RelationId Int     NULL,

	PRIMARY KEY (id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 0
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 3
DECLARE @RelationId Integer(4) -- Int32
SET     @RelationId = 0

INSERT INTO UpdatedEntities
(
	id,
	Value1,
	Value2,
	Value3,
	RelationId
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 11
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 12
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 13
DECLARE @RelationId Integer(4) -- Int32
SET     @RelationId = 1

INSERT INTO UpdatedEntities
(
	id,
	Value1,
	Value2,
	Value3,
	RelationId
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 2
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 21
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 22
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 23
DECLARE @RelationId Integer(4) -- Int32
SET     @RelationId = 2

INSERT INTO UpdatedEntities
(
	id,
	Value1,
	Value2,
	Value3,
	RelationId
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 3
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 31
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 32
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 33
DECLARE @RelationId Integer(4) -- Int32
SET     @RelationId = 3

INSERT INTO UpdatedEntities
(
	id,
	Value1,
	Value2,
	Value3,
	RelationId
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3,
	@RelationId
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NewEntities

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS NewEntities
(
	id     Int NOT NULL,
	Value1 Int NOT NULL,
	Value2 Int NOT NULL,
	Value3 Int NOT NULL,

	PRIMARY KEY (id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 0
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 0
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 0
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 0

INSERT INTO NewEntities
(
	id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 1
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 1
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 1
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 1

INSERT INTO NewEntities
(
	id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 2
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 2
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 2
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 2

INSERT INTO NewEntities
(
	id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @id Integer(4) -- Int32
SET     @id = 3
DECLARE @Value1 Integer(4) -- Int32
SET     @Value1 = 3
DECLARE @Value2 Integer(4) -- Int32
SET     @Value2 = 3
DECLARE @Value3 Integer(4) -- Int32
SET     @Value3 = 3

INSERT INTO NewEntities
(
	id,
	Value1,
	Value2,
	Value3
)
VALUES
(
	@id,
	@Value1,
	@Value2,
	@Value3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @someId Integer(4) -- Int32
SET     @someId = 100

UPDATE
	UpdatedEntities
SET
	Value1 = (
		SELECT
			(UpdatedEntities.Value1 * t4.Value1) * 11
		FROM
			(
				SELECT SKIP 1 FIRST 2
					t_1.Value1,
					t3.id
				FROM
					UpdatedEntities t3
						INNER JOIN NewEntities t_1 ON t_1.id = t3.id
				WHERE
					t_1.id <> @someId
				ORDER BY
					t3.id
			) t4
		WHERE
			UpdatedEntities.id = t4.id
	),
	Value2 = (
		SELECT
			(UpdatedEntities.Value2 * t6.Value2) * 22
		FROM
			(
				SELECT SKIP 1 FIRST 2
					t_2.Value2,
					t5.id
				FROM
					UpdatedEntities t5
						INNER JOIN NewEntities t_2 ON t_2.id = t5.id
				WHERE
					t_2.id <> @someId
				ORDER BY
					t5.id
			) t6
		WHERE
			UpdatedEntities.id = t6.id
	),
	Value3 = (
		SELECT
			(UpdatedEntities.Value3 * t8.Value3) * 33
		FROM
			(
				SELECT SKIP 1 FIRST 2
					t_3.Value3,
					t7.id
				FROM
					UpdatedEntities t7
						INNER JOIN NewEntities t_3 ON t_3.id = t7.id
				WHERE
					t_3.id <> @someId
				ORDER BY
					t7.id
			) t8
		WHERE
			UpdatedEntities.id = t8.id
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT SKIP 1 FIRST 2
					t1.id
				FROM
					UpdatedEntities t1
						INNER JOIN NewEntities t ON t.id = t1.id
				WHERE
					t.id <> @someId
				ORDER BY
					t1.id
			) t2
		WHERE
			UpdatedEntities.id = t2.id
	)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	v.id,
	v.Value1,
	v.Value2,
	v.Value3
FROM
	UpdatedEntities v

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS NewEntities

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS UpdatedEntities

