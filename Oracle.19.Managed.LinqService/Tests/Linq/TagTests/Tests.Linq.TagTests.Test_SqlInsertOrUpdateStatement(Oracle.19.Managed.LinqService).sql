BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12 (asynchronously)

/* My Test */
MERGE INTO "TestTable" t1
USING (SELECT 1 AS "Id" FROM SYS.DUAL) s ON
(
	t1."Id" = s."Id"
)
WHEN MATCHED THEN
	UPDATE 
	SET
		"Fd" = 2
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

