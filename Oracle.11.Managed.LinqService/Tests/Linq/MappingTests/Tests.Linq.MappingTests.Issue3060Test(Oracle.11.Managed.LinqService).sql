﻿BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3060Table"';
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
		CREATE TABLE "Issue3060Table"
		(
			"Id"  Number(19) NOT NULL,
			"Uid" Raw(16)        NULL,

			CONSTRAINT "PK_Issue3060Table" PRIMARY KEY ("Id")
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
DECLARE @Uid_1 Blob -- Object
SET     @Uid_1 = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @Id Int64
SET     @Id = 0

UPDATE
	"Issue3060Table" t1
SET
	"Uid" = :Uid_1
WHERE
	t1."Id" = :Id

BeforeExecute
-- Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3060Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

