BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Smallint -- Int16
SET     @ID = 123
DECLARE @ID_1 Smallint -- Int16
SET     @ID_1 = 0

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	:ID,
	Cast(t2."ID" as Int)
FROM
	(
		SELECT DISTINCT
			"a_Association"."smallintDataType" as "ID"
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" "a_Association" ON t1."smallintDataType" = "a_Association"."intDataType"
		WHERE
			Cast(t1."smallintDataType" as Int) = :ID_1
	) t2

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @ID Smallint -- Int16
SET     @ID = 123
DECLARE @ID_1 Smallint -- Int16
SET     @ID_1 = 1234

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	:ID,
	Cast(t2."ID" as Int)
FROM
	(
		SELECT DISTINCT
			"a_Association"."smallintDataType" as "ID"
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" "a_Association" ON t1."smallintDataType" = "a_Association"."intDataType"
		WHERE
			Cast(t1."smallintDataType" as Int) = :ID_1
	) t2

