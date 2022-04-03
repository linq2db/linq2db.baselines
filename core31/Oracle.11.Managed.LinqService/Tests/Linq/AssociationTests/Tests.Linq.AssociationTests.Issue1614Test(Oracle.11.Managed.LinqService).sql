﻿BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "User"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Resource"
(
	"Id"                 Int NOT NULL,
	"AssociatedObjectId" Int NOT NULL,
	"AssociationTypeId"  Int     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE "Lookup"
(
	"Id"   Int          NOT NULL,
	"Type" VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."Id",
	t1."AssociatedObjectId",
	t1."AssociationTypeId",
	c_1."Id"
FROM
	"Resource" t1
		LEFT JOIN "Lookup" a_AssociationTypeCode ON t1."AssociationTypeId" = a_AssociationTypeCode."Id"
		LEFT JOIN "User" c_1 ON a_AssociationTypeCode."Type" = 'us' AND c_1."Id" = t1."AssociatedObjectId"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Lookup"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Resource"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "User"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

