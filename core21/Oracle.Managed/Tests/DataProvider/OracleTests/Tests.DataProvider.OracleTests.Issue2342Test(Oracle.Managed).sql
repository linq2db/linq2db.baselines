﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "Issue2342Entity"
(
	"Id"   Number(19)   NOT NULL,
	"Name" VarChar(256) NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @:p1 Int64
SET     @:p1 = System.Object[]
DECLARE @:p2 Varchar2 -- String
SET     @:p2 = System.Object[]

INSERT INTO "Issue2342Entity" ("Id", "Name") VALUES (:p1, :p2)

BeforeExecute
-- Oracle.Managed Oracle12

TRUNCATE TABLE "Issue2342Entity"

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue2342Entity"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

