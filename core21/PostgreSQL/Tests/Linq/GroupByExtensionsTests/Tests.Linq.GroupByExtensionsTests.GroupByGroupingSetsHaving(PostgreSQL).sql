BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

CREATE TABLE "GroupSampleClass"
(
	"Id1"   Int NOT NULL,
	"Id2"   Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(1,1,1),
(2,2,0),
(3,0,1),
(4,1,0),
(5,2,1),
(6,0,0),
(7,1,1),
(8,2,0),
(9,0,1),
(10,1,0)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Id1",
	Count(*)
FROM
	(
		SELECT DISTINCT
			"selectParam"."Id1",
			"selectParam"."Id2",
			"selectParam"."Value" as "Value_1"
		FROM
			"GroupSampleClass" "selectParam"
	) t1
GROUP BY GROUPING SETS (
	(t1."Id1", t1."Id2"),
	(t1."Id2"),
	(),
	(t1."Id1")
)
HAVING
	(Count(*) > 0 OR GROUPING(t1."Id1") = 1)

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

DROP TABLE "GroupSampleClass"

