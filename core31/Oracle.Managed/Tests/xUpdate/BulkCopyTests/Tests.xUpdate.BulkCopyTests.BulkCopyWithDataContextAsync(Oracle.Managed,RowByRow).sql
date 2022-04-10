﻿BeforeExecute
-- Oracle.Managed Oracle12

CREATE TABLE "SimpleBulkCopyTable"
(
	"Id" Int NOT NULL
)

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 1

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.Managed Oracle12 (asynchronously)
DECLARE @Id Int32
SET     @Id = 2

INSERT INTO "SimpleBulkCopyTable"
(
	"Id"
)
VALUES
(
	:Id
)

BeforeExecute
-- Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "SimpleBulkCopyTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

