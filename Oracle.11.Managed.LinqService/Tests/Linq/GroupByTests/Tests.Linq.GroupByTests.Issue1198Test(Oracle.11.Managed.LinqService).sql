BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1192Table"';
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
		CREATE TABLE "Issue1192Table"
		(
			"IdId"      Int NOT NULL,
			"MyOtherId" Int NOT NULL,
			"Status"    Int NOT NULL
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
DECLARE @take Int32
SET     @take = 1

SELECT
	(
		SELECT
			Count(*)
		FROM
			"Issue1192Table" t
		WHERE
			t."Status" = 3 AND t."MyOtherId" = 12
	)
FROM
	"Issue1192Table" t_1
WHERE
	t_1."MyOtherId" = 12 AND ROWNUM <= :take

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1192Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

