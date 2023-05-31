﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GroupSampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "GroupSampleClass"
		(
			"Id1"   Int NOT NULL,
			"Id2"   Int NOT NULL,
			"Value" Int NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 1
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 2
DECLARE @Id2 Int32
SET     @Id2 = 2
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 3
DECLARE @Id2 Int32
SET     @Id2 = 0
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 4
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 5
DECLARE @Id2 Int32
SET     @Id2 = 2
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 6
DECLARE @Id2 Int32
SET     @Id2 = 0
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 7
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 8
DECLARE @Id2 Int32
SET     @Id2 = 2
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 9
DECLARE @Id2 Int32
SET     @Id2 = 0
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Id1 Int32
SET     @Id1 = 10
DECLARE @Id2 Int32
SET     @Id2 = 1
DECLARE @Value Int32
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
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."Id1",
	Count(*)
FROM
	(
		SELECT DISTINCT
			selectParam."Id1",
			selectParam."Id2",
			selectParam."Value" as "Value_1"
		FROM
			"GroupSampleClass" selectParam
	) t1
GROUP BY ROLLUP (
	t1."Id1",
	t1."Id2"
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "GroupSampleClass"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

