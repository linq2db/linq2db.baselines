BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @int1 Int32
SET     @int1 = 11
DECLARE @int2 Int32
SET     @int2 = 22
DECLARE @int3 Int32
SET     @int3 = 33
DECLARE @someId Int32
SET     @someId = 100
DECLARE @skip Int32
SET     @skip = 1
DECLARE @take Int32
SET     @take = 2

UPDATE
	"UpdatedEntities"
SET
	("Value1", "Value2", "Value3") = (
		SELECT
			("UpdatedEntities"."Value1" * t6."Value1") * :int1,
			("UpdatedEntities"."Value2" * t6."Value2") * :int2,
			("UpdatedEntities"."Value3" * t6."Value3") * :int3
		FROM
			(
				SELECT
					t5."Value1",
					t5."Value2",
					t5."Value3",
					t5."id"
				FROM
					(
						SELECT
							t4."Value1",
							t4."Value2",
							t4."Value3",
							t4."id",
							ROWNUM as RN
						FROM
							(
								SELECT
									t_1."Value1",
									t_1."Value2",
									t_1."Value3",
									c_2."id"
								FROM
									"UpdatedEntities" c_2
										INNER JOIN "NewEntities" t_1 ON t_1."id" = c_2."id"
								WHERE
									t_1."id" <> :someId
								ORDER BY
									c_2."id"
							) t4
						WHERE
							ROWNUM <= (:skip + :take)
					) t5
				WHERE
					t5.RN > :skip
			) t6
		WHERE
			"UpdatedEntities"."id" = t6."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					t2."id"
				FROM
					(
						SELECT
							t1."id",
							ROWNUM as RN
						FROM
							(
								SELECT
									c_1."id"
								FROM
									"UpdatedEntities" c_1
										INNER JOIN "NewEntities" t ON t."id" = c_1."id"
								WHERE
									t."id" <> :someId
								ORDER BY
									c_1."id"
							) t1
						WHERE
							ROWNUM <= (:skip + :take)
					) t2
				WHERE
					t2.RN > :skip
			) t3
		WHERE
			"UpdatedEntities"."id" = t3."id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	v."id",
	v."Value1",
	v."Value2",
	v."Value3"
FROM
	"UpdatedEntities" v

