BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :Id

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

INSERT INTO "LinqDataTypes"
(
	"ID",
	"BigIntValue",
	"IntValue"
)
VALUES
(
	101,
	4,
	10
)

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	CASE
		WHEN r."BigIntValue" IS NOT NULL AND r."IntValue" IS NOT NULL
			THEN True
		ELSE False
	END,
	r."BigIntValue",
	r."IntValue"
FROM
	"LinqDataTypes" r
WHERE
	r."ID" = 101

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 102

DELETE FROM
	"LinqDataTypes" r
WHERE
	r."ID" >= 101 AND r."ID" < :Id

