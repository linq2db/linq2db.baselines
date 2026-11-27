-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
INSERT INTO "InsertSelectAssociationRow"
(
	"Pk",
	"ID",
	"intDataType"
)
SELECT
	t2."ID",
	123,
	t2."ID"
FROM
	(
		SELECT DISTINCT
			"a_Association"."ID"
		FROM
			"InsertSelectAssociationRow" t1
				INNER JOIN "InsertSelectAssociationRow" "a_Association" ON t1."ID"::Int = "a_Association"."intDataType"
		WHERE
			1 = 0
	) t2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Smallint -- Int16
SET     @p = 1234

INSERT INTO "InsertSelectAssociationRow"
(
	"Pk",
	"ID",
	"intDataType"
)
SELECT
	t2."ID",
	123,
	t2."ID"
FROM
	(
		SELECT DISTINCT
			"a_Association"."ID"
		FROM
			"InsertSelectAssociationRow" t1
				INNER JOIN "InsertSelectAssociationRow" "a_Association" ON t1."ID"::Int = "a_Association"."intDataType"
		WHERE
			t1."ID" = :p
	) t2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Pk",
	t1."ID",
	t1."intDataType"
FROM
	"InsertSelectAssociationRow" t1

