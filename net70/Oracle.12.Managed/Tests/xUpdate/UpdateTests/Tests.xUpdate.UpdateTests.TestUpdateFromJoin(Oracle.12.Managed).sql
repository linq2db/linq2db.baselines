BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "access_mode"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

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
-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"gt_s_one"
SET
	("gt_s_one"."col1", "gt_s_one"."col2", "gt_s_one"."col3", "gt_s_one"."col4", "gt_s_one"."col5", "gt_s_one"."col6") = (
		SELECT
			x."col1",
			x."col2",
			Replace(x."col3", 'auth.', ''),
			x."col4",
			CASE
				WHEN x."col3" = 'empty' THEN '1'
				ELSE '0'
			END,
			CASE
				WHEN x."col3" = 'empty' THEN ''
				ELSE Cast(am."id" as VarChar(11))
			END
		FROM
			"gt_s_one" x
				LEFT JOIN "access_mode" am ON (Upper(Replace(x."col3", 'auth.', '')) = Upper(am."code") OR Upper(Replace(x."col3", 'auth.', '')) IS NULL AND Upper(am."code") IS NULL)
		WHERE
			"gt_s_one"."id" = x."id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"gt_s_one" x_1
				LEFT JOIN "access_mode" am_1 ON (Upper(Replace(x_1."col3", 'auth.', '')) = Upper(am_1."code") OR Upper(Replace(x_1."col3", 'auth.', '')) IS NULL AND Upper(am_1."code") IS NULL)
		WHERE
			"gt_s_one"."id" = x_1."id"
	)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "access_mode"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "gt_s_one"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

