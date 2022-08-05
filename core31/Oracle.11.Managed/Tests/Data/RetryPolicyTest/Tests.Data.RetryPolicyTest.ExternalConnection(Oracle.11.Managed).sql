﻿BeforeExecute
--  Oracle.11.Managed Oracle11

CREATE TABLE "MyEntity"
(
	"Id"   Number(19)   NOT NULL,
	"Name" VarChar(256) NOT NULL
)

BeforeExecute
--  Oracle.11.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "MyEntity"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
--  Oracle.11.Managed Oracle11

CREATE TABLE "MyEntity"
(
	"Id"   Number(19)   NOT NULL,
	"Name" VarChar(256) NOT NULL
)

