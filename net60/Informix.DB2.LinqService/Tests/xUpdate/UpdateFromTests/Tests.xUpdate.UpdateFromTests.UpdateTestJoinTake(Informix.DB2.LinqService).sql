﻿BeforeExecute
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
DECLARE @int1 Integer(4) -- Int32
SET     @int1 = 11
DECLARE @someId Integer(4) -- Int32
SET     @someId = 100
DECLARE @int2 Integer(4) -- Int32
SET     @int2 = 22
DECLARE @int3 Integer(4) -- Int32
SET     @int3 = 33

UPDATE
	UpdatedEntities
SET
	UpdatedEntities.Value1 = (
		SELECT
			(t1.Value1 * t1.Value1_1) * @int1
		FROM
			(
				SELECT FIRST 2
					c_1.Value1,
					t.Value1 as Value1_1,
					c_1.id
				FROM
					UpdatedEntities c_1
						INNER JOIN NewEntities t ON t.id = c_1.id
				WHERE
					t.id <> @someId
			) t1
		WHERE
			UpdatedEntities.id = t1.id
	),
	UpdatedEntities.Value2 = (
		SELECT
			(t2.Value2 * t2.Value2_1) * @int2
		FROM
			(
				SELECT FIRST 2
					c_2.Value2,
					t_1.Value2 as Value2_1,
					c_2.id
				FROM
					UpdatedEntities c_2
						INNER JOIN NewEntities t_1 ON t_1.id = c_2.id
				WHERE
					t_1.id <> @someId
			) t2
		WHERE
			UpdatedEntities.id = t2.id
	),
	UpdatedEntities.Value3 = (
		SELECT
			(t3.Value3 * t3.Value3_1) * @int3
		FROM
			(
				SELECT FIRST 2
					c_3.Value3,
					t_2.Value3 as Value3_1,
					c_3.id
				FROM
					UpdatedEntities c_3
						INNER JOIN NewEntities t_2 ON t_2.id = c_3.id
				WHERE
					t_2.id <> @someId
			) t3
		WHERE
			UpdatedEntities.id = t3.id
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT FIRST 2
					c_4.id
				FROM
					UpdatedEntities c_4
						INNER JOIN NewEntities t_3 ON t_3.id = c_4.id
				WHERE
					t_3.id <> @someId
			) t4
		WHERE
			UpdatedEntities.id = t4.id
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

