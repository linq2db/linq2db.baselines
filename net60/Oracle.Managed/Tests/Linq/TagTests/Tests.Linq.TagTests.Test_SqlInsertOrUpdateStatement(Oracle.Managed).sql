BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "TestTable"
(
	"Id" Int NOT NULL,
	"Fd" Int     NULL,

	CONSTRAINT "PK_TestTable" PRIMARY KEY ("Id")
)

BeforeExecute
-- Oracle.Managed Oracle12

/* My Test */
MERGE INTO "TestTable" t1
USING (SELECT 1 AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		t1."Fd" = 2
WHEN NOT MATCHED THEN
	INSERT
	(
		"Id",
		"Fd"
	)
	VALUES
	(
		1,
		2
	)

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

