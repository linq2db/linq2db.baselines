BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "sample_class"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "sample_class"
		(
			"id"    Int         NOT NULL,
			"value" VarChar(50)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_1'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_2'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_3'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_4'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 5
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_5'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 6
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_6'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 7
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_7'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 8
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_8'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 9
DECLARE @Value Varchar2(5) -- String
SET     @Value = 'Str_9'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 10
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_10'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 11
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_11'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 12
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_12'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 13
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_13'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 14
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_14'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 15
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_15'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 16
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_16'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 17
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_17'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 18
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_18'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 19
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_19'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @Id Int32
SET     @Id = 20
DECLARE @Value Varchar2(6) -- String
SET     @Value = 'Str_20'

INSERT INTO "sample_class"
(
	"id",
	"value"
)
VALUES
(
	:Id,
	:Value
)

BeforeExecute
-- Oracle.11.Managed Oracle11

SELECT
	c_1."value",
	c_1."id"
FROM
	(
		SELECT * FROM "sample_class" where "id" >= 5 and "id" < 15
	) c_1
WHERE
	c_1."id" > 10
ORDER BY
	c_1."id"

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @startId Int32
SET     @startId = 5
DECLARE @endId Int32
SET     @endId = 15

SELECT
	t."value",
	t."id"
FROM
	"sample_class" t
WHERE
	t."id" >= :startId AND t."id" < :endId AND t."id" > 10
ORDER BY
	t."id"

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "sample_class"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

