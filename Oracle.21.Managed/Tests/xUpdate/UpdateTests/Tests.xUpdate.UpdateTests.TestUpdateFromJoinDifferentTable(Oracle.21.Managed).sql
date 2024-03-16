BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
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
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one_target"';
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
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "access_mode"';
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
-- Oracle.21.Managed Oracle.Managed Oracle12

UPDATE
	"gt_s_one_target"
SET
	("col1", "col2", "col3", "col4", "col5", "col6") = (
		SELECT
			x_1."col1",
			x_1."col2",
			Replace(x_1."col3", 'auth.', ''),
			x_1."col4",
			CASE
				WHEN x_1."col3" = 'empty' THEN '1'
				ELSE '0'
			END,
			CASE
				WHEN x_1."col3" = 'empty' THEN ''
				ELSE Cast(y1_3."id" as VarChar(255))
			END
		FROM
			"gt_s_one" x_1
				LEFT JOIN (
					SELECT
						y1_2."id",
						Upper(y1_2."code") as "c1"
					FROM
						"access_mode" y1_2
				) y1_3 ON (Upper(Replace(x_1."col3", 'auth.', '')) = y1_3."c1" OR Upper(Replace(x_1."col3", 'auth.', '')) IS NULL AND y1_3."c1" IS NULL)
		WHERE
			x_1."id" = "gt_s_one_target"."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" x
				LEFT JOIN (
					SELECT
						Upper(y1."code") as "c1"
					FROM
						"access_mode" y1
				) y1_1 ON (Upper(Replace(x."col3", 'auth.', '')) = y1_1."c1" OR Upper(Replace(x."col3", 'auth.', '')) IS NULL AND y1_1."c1" IS NULL)
		WHERE
			x."id" = "gt_s_one_target"."id"
	)

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "access_mode"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one_target"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

