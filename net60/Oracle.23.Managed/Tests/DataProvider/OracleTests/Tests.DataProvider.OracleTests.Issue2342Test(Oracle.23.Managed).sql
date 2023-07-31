BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2342Entity"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue2342Entity"
		(
			"Id"   Number(19)   NOT NULL,
			"Name" VarChar(256) NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
BeginTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @:p1 Int64
SET     @:p1 = {1,2,3,4,5,6,7,8,9,10}
DECLARE @:p2 Varchar2 -- String
SET     @:p2 = {'Name_1','Name_2','Name_3','Name_4','Name_5','Name_6','Name_7','Name_8','Name_9','Name_10'}

INSERT INTO "Issue2342Entity" ("Id", "Name") VALUES (:p1, :p2)

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

TRUNCATE TABLE "Issue2342Entity"

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2342Entity"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

