﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE UpdatedEntities
(
	id         Int NOT NULL,
	Value1     Int NOT NULL,
	Value2     Int NOT NULL,
	Value3     Int NOT NULL,
	RelationId Int     NULL,

	CONSTRAINT PK_UpdatedEntities PRIMARY KEY (id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO UpdatedEntities (id, Value1, Value2, Value3, RelationId) VALUES (0,1,1,3,0)
	INTO UpdatedEntities (id, Value1, Value2, Value3, RelationId) VALUES (1,11,12,13,1)
	INTO UpdatedEntities (id, Value1, Value2, Value3, RelationId) VALUES (2,21,22,23,2)
	INTO UpdatedEntities (id, Value1, Value2, Value3, RelationId) VALUES (3,31,32,33,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE NewEntities
(
	id     Int NOT NULL,
	Value1 Int NOT NULL,
	Value2 Int NOT NULL,
	Value3 Int NOT NULL,

	CONSTRAINT PK_NewEntities PRIMARY KEY (id)
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

INSERT ALL
	INTO NewEntities (id, Value1, Value2, Value3) VALUES (0,0,0,0)
	INTO NewEntities (id, Value1, Value2, Value3) VALUES (1,1,1,1)
	INTO NewEntities (id, Value1, Value2, Value3) VALUES (2,2,2,2)
	INTO NewEntities (id, Value1, Value2, Value3) VALUES (3,3,3,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @int1 Int32
SET     @int1 = 11
DECLARE @someId Int32
SET     @someId = 100
DECLARE @take Int32
SET     @take = 2
DECLARE @int2 Int32
SET     @int2 = 22
DECLARE @int3 Int32
SET     @int3 = 33

UPDATE
	UpdatedEntities
SET
	UpdatedEntities.Value1 = (
		SELECT
			(t1.Value1 * t1.Value1_1) * :int1
		FROM
			(
				SELECT
					c_1.Value1,
					t.Value1 as Value1_1,
					c_1.Value2,
					t.Value2 as Value2_1,
					c_1.Value3,
					t.Value3 as Value3_1,
					c_1.id
				FROM
					UpdatedEntities c_1
						INNER JOIN NewEntities t ON t.id = c_1.id
				WHERE
					t.id <> :someId AND ROWNUM <= :take
			) t1
		WHERE
			UpdatedEntities.id = t1.id
	),
	UpdatedEntities.Value2 = (
		SELECT
			(t2.Value2 * t2.Value2_1) * :int2
		FROM
			(
				SELECT
					c_2.Value1,
					t_1.Value1 as Value1_1,
					c_2.Value2,
					t_1.Value2 as Value2_1,
					c_2.Value3,
					t_1.Value3 as Value3_1,
					c_2.id
				FROM
					UpdatedEntities c_2
						INNER JOIN NewEntities t_1 ON t_1.id = c_2.id
				WHERE
					t_1.id <> :someId AND ROWNUM <= :take
			) t2
		WHERE
			UpdatedEntities.id = t2.id
	),
	UpdatedEntities.Value3 = (
		SELECT
			(t3.Value3 * t3.Value3_1) * :int3
		FROM
			(
				SELECT
					c_3.Value1,
					t_2.Value1 as Value1_1,
					c_3.Value2,
					t_2.Value2 as Value2_1,
					c_3.Value3,
					t_2.Value3 as Value3_1,
					c_3.id
				FROM
					UpdatedEntities c_3
						INNER JOIN NewEntities t_2 ON t_2.id = c_3.id
				WHERE
					t_2.id <> :someId AND ROWNUM <= :take
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
				SELECT
					c_4.Value1,
					t_3.Value1 as Value1_1,
					c_4.Value2,
					t_3.Value2 as Value2_1,
					c_4.Value3,
					t_3.Value3 as Value3_1,
					c_4.id
				FROM
					UpdatedEntities c_4
						INNER JOIN NewEntities t_3 ON t_3.id = c_4.id
				WHERE
					t_3.id <> :someId AND ROWNUM <= :take
			) t4
		WHERE
			UpdatedEntities.id = t4.id
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	v.id,
	v.Value1,
	v.Value2,
	v.Value3
FROM
	UpdatedEntities v

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE NewEntities

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE UpdatedEntities

