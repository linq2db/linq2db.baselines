BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TestEqualsTable1"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "TestEqualsTable2"
(
	"Id" Int NOT NULL,
	FK   Int     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @param Int32
SET     @param = NULL

SELECT
	t1."Id"
FROM
	"TestEqualsTable1" t1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TestEqualsTable2" t2
		WHERE
			t1."Id" = t2.FK AND t2."Id" = :param
	)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestEqualsTable2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestEqualsTable1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

