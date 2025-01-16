BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
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
		CREATE TABLE "gt_s_one"
		(
			"id"   Int          NOT NULL,
			"col1" VarChar(100)     NULL,
			"col2" VarChar(100)     NULL,
			"col3" VarChar(100)     NULL,
			"col4" VarChar(100)     NULL,
			"col5" VarChar(100)     NULL,
			"col6" VarChar(100)     NULL,

			CONSTRAINT "PK_gt_s_one" PRIMARY KEY ("id")
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one_target"';
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
		CREATE TABLE "gt_s_one_target"
		(
			"id"   Int          NOT NULL,
			"col1" VarChar(100)     NULL,
			"col2" VarChar(100)     NULL,
			"col3" VarChar(100)     NULL,
			"col4" VarChar(100)     NULL,
			"col5" VarChar(100)     NULL,
			"col6" VarChar(100)     NULL,

			CONSTRAINT "PK_gt_s_one_target" PRIMARY KEY ("id")
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "access_mode"';
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
		CREATE TABLE "access_mode"
		(
			"id"   Int          NOT NULL,
			"code" VarChar(255)     NULL,

			CONSTRAINT "PK_access_mode" PRIMARY KEY ("id")
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

UPDATE
	"gt_s_one_target"
SET
	("col1", "col2", "col3", "col4", "col5", "col6") = (
		SELECT
			x_1."col1",
			x_1."col2",
			REPLACE(x_1."col3", 'auth.', ''),
			x_1."col4",
			CASE
				WHEN x_1."col3" = 'empty' THEN '1'
				ELSE '0'
			END,
			CASE
				WHEN x_1."col3" = 'empty' THEN ''
				ELSE CAST(y1_1."id" AS VarChar(100))
			END
		FROM
			"gt_s_one" x_1
				INNER JOIN "gt_s_one_target" t2_1 ON x_1."id" = t2_1."id"
				LEFT JOIN "access_mode" y1_1 ON Upper(REPLACE(x_1."col3", 'auth.', '')) = Upper(y1_1."code") OR x_1."col3" IS NULL AND y1_1."code" IS NULL
		WHERE
			"gt_s_one_target"."id" = t2_1."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" x
				INNER JOIN "gt_s_one_target" t2 ON x."id" = t2."id"
				LEFT JOIN "access_mode" y1 ON Upper(REPLACE(x."col3", 'auth.', '')) = Upper(y1."code") OR x."col3" IS NULL AND y1."code" IS NULL
		WHERE
			"gt_s_one_target"."id" = t2."id"
	)

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "access_mode"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one_target"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

