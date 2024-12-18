BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BooleanTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "BooleanTable"
		(
			"Id"     Int NOT NULL,
			"Value1" Int NOT NULL,
			"Value2" Int NOT NULL,
			"Value4" Int     NULL,
			"Value5" Int     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 7
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 8
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 9
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 10
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 11
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 12
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 13
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 14
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 15
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 16
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 17
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 18
DECLARE @Value1 Int32
SET     @Value1 = 0
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 19
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 20
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 21
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 22
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 23
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 24
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 25
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 26
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 27
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 0
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 28
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 29
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 30
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = NULL
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 31
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 32
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 33
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 0
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 34
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 35
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = 0

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 36
DECLARE @Value1 Int32
SET     @Value1 = 1
DECLARE @Value2 Int32
SET     @Value2 = 1
DECLARE @Value4 Int32
SET     @Value4 = 1
DECLARE @Value5 Int32
SET     @Value5 = 1

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
VALUES
(
	:Id,
	:Value1,
	:Value2,
	:Value4,
	:Value5
)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	0 IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	0 IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	NULL IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 NOT IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	0 NOT IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	1 NOT IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r
WHERE
	0 NOT IN (
		SELECT
			s."Value1"
		FROM
			"BooleanTable" s
		WHERE
			s."Id" > r."Id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Value1",
	r."Value2",
	r."Value4",
	r."Value5"
FROM
	"BooleanTable" r

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Value1",
	t1."Value2",
	t1."Value4",
	t1."Value5"
FROM
	"BooleanTable" t1

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "BooleanTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

