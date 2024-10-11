BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "GroupSampleClass"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "GroupSampleClass"
(
	"Id1"   Int NOT NULL,
	"Id2"   Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 1
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 1
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 2
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 2
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 3
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 0
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 4
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 1
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 5
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 2
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 6
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 0
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 7
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 1
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 8
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 2
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 9
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 0
DECLARE @Value Integer -- Int32
SET     @Value = 1

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL
DECLARE @Id1 Integer -- Int32
SET     @Id1 = 10
DECLARE @Id2 Integer -- Int32
SET     @Id2 = 1
DECLARE @Value Integer -- Int32
SET     @Value = 0

INSERT INTO "GroupSampleClass"
(
	"Id1",
	"Id2",
	"Value"
)
VALUES
(
	:Id1,
	:Id2,
	:Value
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id1",
	COUNT(*)
FROM
	(
		SELECT DISTINCT
			g_1."Id1",
			g_1."Id2",
			g_1."Value" as "Value_1"
		FROM
			"GroupSampleClass" g_1
	) t1
GROUP BY ROLLUP (
	t1."Id1",
	t1."Id2"
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "GroupSampleClass"

