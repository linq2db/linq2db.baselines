BeforeExecute
-- Oracle.Managed Oracle12

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
-- Oracle.Managed Oracle12

INSERT ALL
	INTO UpdatedEntities (id, Value1, Value2, Value3, RelationId) VALUES (0,1,1,3,0)
	INTO UpdatedEntities (id, Value1, Value2, Value3, RelationId) VALUES (1,11,12,13,1)
	INTO UpdatedEntities (id, Value1, Value2, Value3, RelationId) VALUES (2,21,22,23,2)
	INTO UpdatedEntities (id, Value1, Value2, Value3, RelationId) VALUES (3,31,32,33,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE NewEntities
(
	id     Int NOT NULL,
	Value1 Int NOT NULL,
	Value2 Int NOT NULL,
	Value3 Int NOT NULL,

	CONSTRAINT PK_NewEntities PRIMARY KEY (id)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO NewEntities (id, Value1, Value2, Value3) VALUES (0,0,0,0)
	INTO NewEntities (id, Value1, Value2, Value3) VALUES (1,1,1,1)
	INTO NewEntities (id, Value1, Value2, Value3) VALUES (2,2,2,2)
	INTO NewEntities (id, Value1, Value2, Value3) VALUES (3,3,3,3)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @int1 Int32
SET     @int1 = 11
DECLARE @someId Int32
SET     @someId = 100
DECLARE @skip Int32
SET     @skip = 3
DECLARE @skip_1 Int32
SET     @skip_1 = 1
DECLARE @int2 Int32
SET     @int2 = 22
DECLARE @skip_2 Int32
SET     @skip_2 = 3
DECLARE @int3 Int32
SET     @int3 = 33
DECLARE @skip_3 Int32
SET     @skip_3 = 3
DECLARE @skip_4 Int32
SET     @skip_4 = 3

UPDATE
	UpdatedEntities
SET
	UpdatedEntities.Value1 = (
		SELECT
			(t3.Value1 * t3.Value1_1) * :int1
		FROM
			(
				SELECT
					t2.id,
					t2.Value1,
					t2.Value1_1
				FROM
					(
						SELECT
							ROWNUM as RN,
							t1.Value1,
							t1.Value1_1,
							t1.id
						FROM
							(
								SELECT
									c_1.Value1,
									t.Value1 as Value1_1,
									c_1.id
								FROM
									UpdatedEntities c_1
										INNER JOIN NewEntities t ON t.id = c_1.id
								WHERE
									t.id <> :someId
								ORDER BY
									c_1.id
							) t1
						WHERE
							ROWNUM <= :skip
					) t2
				WHERE
					t2.RN > :skip_1
			) t3
		WHERE
			UpdatedEntities.id = t3.id
	),
	UpdatedEntities.Value2 = (
		SELECT
			(t6.Value2 * t6.Value2_1) * :int2
		FROM
			(
				SELECT
					t5.id,
					t5.Value2,
					t5.Value2_1
				FROM
					(
						SELECT
							ROWNUM as RN,
							t4.Value2,
							t4.Value2_1,
							t4.id
						FROM
							(
								SELECT
									c_2.Value2,
									t_1.Value2 as Value2_1,
									c_2.id
								FROM
									UpdatedEntities c_2
										INNER JOIN NewEntities t_1 ON t_1.id = c_2.id
								WHERE
									t_1.id <> :someId
								ORDER BY
									c_2.id
							) t4
						WHERE
							ROWNUM <= :skip_2
					) t5
				WHERE
					t5.RN > :skip_1
			) t6
		WHERE
			UpdatedEntities.id = t6.id
	),
	UpdatedEntities.Value3 = (
		SELECT
			(t9.Value3 * t9.Value3_1) * :int3
		FROM
			(
				SELECT
					t8.id,
					t8.Value3,
					t8.Value3_1
				FROM
					(
						SELECT
							ROWNUM as RN,
							t7.Value3,
							t7.Value3_1,
							t7.id
						FROM
							(
								SELECT
									c_3.Value3,
									t_2.Value3 as Value3_1,
									c_3.id
								FROM
									UpdatedEntities c_3
										INNER JOIN NewEntities t_2 ON t_2.id = c_3.id
								WHERE
									t_2.id <> :someId
								ORDER BY
									c_3.id
							) t7
						WHERE
							ROWNUM <= :skip_3
					) t8
				WHERE
					t8.RN > :skip_1
			) t9
		WHERE
			UpdatedEntities.id = t9.id
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					t11.id
				FROM
					(
						SELECT
							ROWNUM as RN,
							t10.id
						FROM
							(
								SELECT
									c_4.id
								FROM
									UpdatedEntities c_4
										INNER JOIN NewEntities t_3 ON t_3.id = c_4.id
								WHERE
									t_3.id <> :someId
								ORDER BY
									c_4.id
							) t10
						WHERE
							ROWNUM <= :skip_4
					) t11
				WHERE
					t11.RN > :skip_1
			) t12
		WHERE
			UpdatedEntities.id = t12.id
	)

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	v.id,
	v.Value1,
	v.Value2,
	v.Value3
FROM
	UpdatedEntities v

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE NewEntities

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE UpdatedEntities

