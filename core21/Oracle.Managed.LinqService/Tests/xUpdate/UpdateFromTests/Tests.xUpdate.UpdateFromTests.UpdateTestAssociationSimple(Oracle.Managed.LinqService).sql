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

CREATE TABLE UpdateRelation
(
	id            Int NOT NULL,
	RelatedValue1 Int NOT NULL,
	RelatedValue2 Int NOT NULL,
	RelatedValue3 Int NOT NULL,

	CONSTRAINT PK_UpdateRelation PRIMARY KEY (id)
)

BeforeExecute
-- Oracle.Managed Oracle12

INSERT ALL
	INTO UpdateRelation (id, RelatedValue1, RelatedValue2, RelatedValue3) VALUES (0,1,2,3)
	INTO UpdateRelation (id, RelatedValue1, RelatedValue2, RelatedValue3) VALUES (1,11,12,13)
	INTO UpdateRelation (id, RelatedValue1, RelatedValue2, RelatedValue3) VALUES (2,21,22,23)
	INTO UpdateRelation (id, RelatedValue1, RelatedValue2, RelatedValue3) VALUES (3,31,32,33)
SELECT * FROM dual

BeforeExecute
-- Oracle.Managed Oracle12

UPDATE
	UpdatedEntities
SET
	UpdatedEntities.Value1 = UpdatedEntities.Value1 + UpdatedEntities.Value2 + UpdatedEntities.Value3,
	UpdatedEntities.Value2 = UpdatedEntities.Value1 + UpdatedEntities.Value2 + UpdatedEntities.Value3,
	UpdatedEntities.Value3 = 1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			UpdatedEntities v
				LEFT JOIN UpdateRelation a_Relation ON v.RelationId = a_Relation.id
		WHERE
			a_Relation.RelatedValue1 = 11 AND UpdatedEntities.id = v.id
	)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	v.Value1,
	v.Value2,
	v.Value3
FROM
	UpdatedEntities v
		LEFT JOIN UpdateRelation a_Relation ON v.RelationId = a_Relation.id
WHERE
	a_Relation.RelatedValue1 = 11
FETCH NEXT :take ROWS ONLY

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE UpdateRelation

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE UpdatedEntities

